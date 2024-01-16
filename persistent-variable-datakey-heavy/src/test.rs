#![cfg(test)]

use super::{PersistentVariableDataKeyHeavyContract, PersistentVariableDataKeyHeavyContractClient};
use soroban_sdk::{Env};

extern crate std;

#[test]
fn test() {
    let env = Env::default();
    let contract_id = env.register_contract(None, PersistentVariableDataKeyHeavyContract);
    let client = PersistentVariableDataKeyHeavyContractClient::new(&env, &contract_id);


    client.increment();
    assert_eq!(client.get_address(&1), client.address.clone());

    client.increment();
    assert_eq!(client.get_address(&2), client.address.clone());
}
