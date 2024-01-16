# instance-persistent-dos-soroban
A Repo to replicate a DoS situation when using instance or persistent storage wih Vectors or Mappings in Soroban

# Situation 1: Instance, vector, light
This contract stores information in a **vector** that increases in using **instance** type of storage. But the contract is very light.

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
After 1653 pushs I get a `ResourceLimitExceeded` error.
Check the [Attack_1_Error_Message.md](Attack_1_Error_Message.md) for the complete error message

By doing `ls -alh instance-vector-light/target/wasm32-unknown-unknown/release/instance_vector_light.wasm ` we get that the contract is 734 bytes. Which is around 0,717 kb. We can guess that each push increases the storage in around (66560-734)/1653 = 39,822 bytes

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
-rwxr-xr-x 2 root root 63464 Jan 16 21:49 target/wasm32-unknown-unknown/release/instance_vector_heavy.wasm
```

So. How the attack changes?
If we think that from the 65kb, 63464 bytes are occupied by the contract, this means that we have 3096 bytes left. Because we know that each push increases the storage in around 39,822 bytes we can expect that this will fail after 3096/39,822 = 77,7 calls.

Let's check:

```bash
bash src/attack.sh standalone instance-vecor-heavy

```


# Situation 3: Persistent, vector, heavy
In this case, the vector is stored in a persisent storage, we exepct that even if the contract is very heavy, it can be attacked.
This will happen when the vector will reach a total of 65kb, and we expect it to be similar as the Situation 1, where the contract was very light
