#![cfg(test)]

use super::{PersistentVariableDataKeyHeavyContract, PersistentVariableDataKeyHeavyContractClient};
use soroban_sdk::{Env};

extern crate std;

#[test]
fn test() {
    let env = Env::default();
    let contract_id = env.register_contract(None, PersistentVariableDataKeyHeavyContract);
    let client = PersistentVariableDataKeyHeavyContractClient::new(&env, &contract_id);

    client.increment_a();
    assert_eq!(client.get_address_a(&0), client.address.clone());

    client.increment_a();
    assert_eq!(client.get_address_a(&1), client.address.clone());

    client.increment_b();
    assert_eq!(client.get_address_b(&0), client.address.clone());
}
