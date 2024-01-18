# instance-persistent-dos-soroban
A Repo to replicate a DoS situation when using instance or persistent storage wih Vectors or Mappings in Soroban. We will see DoS results as well as the costs of both writing and reading the contract.

In this repo we will have 4 ways of writing a similar smart contract. From an external point of view, these smart contracts might be the same. Indeed, we wrote the exact same test for all of them!

```rust
client.increment_a();
assert_eq!(client.get_address_a(&0), client.address.clone());

client.increment_a();
assert_eq!(client.get_address_a(&1), client.address.clone());

client.increment_b();
assert_eq!(client.get_address_b(&0), client.address.clone());
```

However, depending on how we program this, the contract can be attacked using DoS :O

What we know:

Instance: The amount of data that can be stored in the instance storage is limited by the ledger entry size. [Source](https://docs.rs/soroban-sdk/latest/soroban_sdk/storage/struct.Storage.html#method.instance)
Instance: All instance storage is stored in **a single contract instance LedgerEntry** and shares a single TTL [Source](https://soroban.stellar.org/docs/soroban-internals/state-archival)
Ledger Entry Size: 64kb [Source](https://soroban.stellar.org/docs/soroban-internals/fees-and-metering#resource-limits)

# Situation 1: Instance, vector, light
This contract stores information in **two vector** using **instance** type of storage. Both of the vectors increase in size. But the contract is very light.

1.- Check and test the contract
```bash
bash quickstart.sh standalone
bash run.sh
cd instance-vector-light
make build
make test
```

2.- Do a DoS attack to the contract and check how many entries does the contract support:
```bash
bash src/attack.sh standalone instance-vector-light
```

After 818 push calls of vector A and 818 push calls of vector B, we have a `ResourceLimitExceeded` error.
Check the [error-instance-vector-light.md](error-instance-vector-light.md) for the complete error message.

By doing `ls -alh instance-vector-light/target/wasm32-unknown-unknown/release/instance_vector_light.wasm ` we get that the contract is 987 bytes.

As we will see in the next Situation, the contract size does not matter, as all the instances type of storages are stored **in a single contract instance LedgerEntry**. And we can prove that this LedgerEntry is independent of the contract size!

Because we managed to store 818*2 = 1636 times a 32bytes address. 

From [tdep comments](https://discord.com/channels/897514728459468821/966788672164855829/1197477008930766918) the amount of bytes to be stored are a bit more than 32 bytes of the addresss. He says that every push should be around 40kb. Because the LedgerEntry space is 64kb, this means that the space is 65536 bytes.

65536 / 1636 = 40,05kb... Yes!

**Costs simulations for instance-vector-light:** From [cost-instance-vector-light.md](cost-instance-vector-light.md) we can see that both the cost of writing and reading the contract.
**Most important:** Every push to any of the vectors increases the value of reading a "non related function" (get_lorem_ipsum) in 46 stroops!
 
# Situation 2: Instance, vector, heavy
This contract stores information in a **vector** that increases in using **instance** type of storage. But the contract is **very light**.

I have stored a big lorem ipsum, making the contract o be 62kb
If you do:
```bash
cd instance-vector-heavy
make build
ls -al target/wasm32-unknown-unknown/release/instance_vector_heavy.wasm 
```

You'll get something like:
```bash
-rwxr-xr-x 2 root root 65194 Jan 16 23:02 target/wasm32-unknown-unknown/release/instance_vector_heavy.wasm
```

Does the attack changes? No it doesn't
Let's check:

```bash
bash src/attack.sh standalone instance-vector-heavy

```
If you see the [error-instance-vector-heavy.md](error-instance-vector-heavy.md) error file, you'll see that we managed to store the same amount of information, regardless of the size of the contract!

This proves that the instance LedgerEntry is independent of the contract size!

We can again manage 1636 pushes of a 32 bytes address.


**Costs simulations for instance-vector-heavy:** From [cost-instance-vector-heavy.md](cost-instance-vector-heavy.md) we can see that both the cost of writing and reading the contract.
**Most important:** Every push to any of the vectors increases the value of reading a "non related function" (get_lorem_ipsum) in 48 stroops! (why now is 48 and no 46 as the example before??? don't know....)
Of course, reading the lorem_impum now is much more expensive that in the case of a small lorem impusm

# Situation 3: Persistent, vector, heavy

In this case, these two vectors will use a persistent storage. So we expect that each of this vector will have the capacity to store up to 64kb of information. We expect the contract to fail when a vector reaches 1636 pushes. We continue using a heavy contract.

Let's try:

```bash
bash quickstart.sh standalone # if you haven't done this before
bash run.sh # if you haven't done this before
cd persistent-vector-heavy
make build
make test

```

Let's attack:
```bash
cd /workspace
bash src/attack.sh standalone persistent-vector-heavy
```

And voilà!!! The contract fails endeed when after one vector reaches a total amount of 1636 pushes.
You can see the complete error message in [error-persistent-vector-heavy.md](error-persistent-vector-heavy.md)


**Costs simulations persistent-vector-heavy:** From [cost-persistent-vector-heavy.md](cost-persistent-vector-heavy.md) we can see that increasing the amount of storage used by persistent storage DO NOT increases the cost of reading a "non related function"! This s great!
However, as expected, increasing the size of the vector makes that calling a function that interacts with this vector to increase in cost. See the result doc!!!

# Situation 4: DoS free: Use a Variable DataKey
In this situation, we avoid the usage of a vector. Instead we'll use a variable DataKey, that will receive a number as an argument. So you can do the same calls, but every time, the Address gets stored in a different persistent storage slot. And the contract do not have a limit of amounts of different persistent storage to store.

```rust
pub enum DataKey {
    StoredAddressesA(u32),
    StoredAddressesB(u32),
}
...
env.storage().persistent().set(&DataKey::StoredAddressesA(count), &env.current_contract_address().clone());
```

Let the attack run during the night! 
```bash
bash src/attack.sh standalone persistent-variable-datakey-heavy
```

I ran this script for a bit than a night, and I managed to reach 16700 



**Costs simulations using variable data key:** From [cost-persistent-variable-datakey-heavy.md](cost-persistent-variable-datakey-heavy.md) we can see that with this technique we DONT increase any of the costs! However in the frist 2 pushes, we will set up the COUNTER_A and COUNTER_B instances variables, but after these, all cost remains the same! This is our best design scenario.
We don't increase the cost of reading, because what we are reading won't increase in value... it will just be an address in an independent storage space. And won't increase the cost of reading a "non related" function as we are using persistent storage