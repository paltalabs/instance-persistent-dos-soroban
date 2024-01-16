#![no_std]
use soroban_sdk::{contract, contractimpl, symbol_short, Env, Symbol, Vec, Address};

const VECTOR: Symbol = symbol_short!("VECTOR");

#[contract]
pub struct InstanceVectorLightContract;

#[contractimpl]
impl InstanceVectorLightContract {
    /// Increment increments the vector, adding more informarion
    pub fn increment(env: Env) {
        // Get the current vecot.
        let mut vector: Vec<Address> = env.storage().instance()
            .get(&VECTOR).unwrap_or(Vec::new(&env)); // If no value set, assume an empty vector.

        // Push the current contract address in the vector
        vector.push_back(env.current_contract_address().clone());

        // Save the updated vector to instance storage
        env.storage().instance().set(&VECTOR, &vector);
    }

    pub fn get_address(env: Env, n: u32) -> Address{
        let vector = env.storage().instance()
        .get(&VECTOR).unwrap_or(Vec::new(&env));

        vector.get(n).unwrap()

    }
}

mod test;
