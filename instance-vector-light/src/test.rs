#![cfg(test)]

use super::{InstanceVectorLightContract, InstanceVectorLightContractClient};
use soroban_sdk::{Env, Vec};

extern crate std;

#[test]
fn test() {
    let env = Env::default();
    let contract_id = env.register_contract(None, InstanceVectorLightContract);
    let client = InstanceVectorLightContractClient::new(&env, &contract_id);

    let mut expected_vector = Vec::new(&env); 

    client.increment();
    expected_vector.push_back(client.address.clone());
    assert_eq!(client.get_vector(), expected_vector);

    client.increment();
    expected_vector.push_back(client.address.clone());
    assert_eq!(client.get_vector(), expected_vector);
}
