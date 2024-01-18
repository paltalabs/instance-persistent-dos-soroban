#![no_std]
use soroban_sdk::{contract, contractimpl, symbol_short, Env, Symbol, Vec, Address, String};

const VECTOR_A: Symbol = symbol_short!("VECTOR");
const VECTOR_B: Symbol = symbol_short!("VECTOR");
 
#[contract]
pub struct InstanceVectorLightContract;

#[contractimpl]
impl InstanceVectorLightContract {
    /// Increment increments the vector, adding more informarion
    pub fn increment_a(env: Env) {
        // Get the current vecot.
        let mut vector: Vec<Address> = env.storage().instance()
            .get(&VECTOR_A).unwrap_or(Vec::new(&env)); // If no value set, assume an empty vector.

        // Push the current contract address in the vector
        vector.push_back(env.current_contract_address().clone());

        // Save the updated vector to instance storage
        env.storage().instance().set(&VECTOR_A, &vector);
    }

    pub fn increment_b(env: Env) {
        // Get the current vecot.
        let mut vector: Vec<Address> = env.storage().instance()
            .get(&VECTOR_B).unwrap_or(Vec::new(&env)); // If no value set, assume an empty vector.

        // Push the current contract address in the vector
        vector.push_back(env.current_contract_address().clone());

        // Save the updated vector to instance storage
        env.storage().instance().set(&VECTOR_B, &vector);
    }

    pub fn get_address_a(env: Env, n: u32) -> Address{
        let vector = env.storage().instance()
        .get(&VECTOR_A).unwrap_or(Vec::new(&env));

        vector.get(n).unwrap()

    }

    pub fn get_address_b(env: Env, n: u32) -> Address{
        let vector = env.storage().instance()
        .get(&VECTOR_B).unwrap_or(Vec::new(&env));

        vector.get(n).unwrap()

    }

    pub fn get_lorem_ipsum(env: Env) -> String{
        const LOREM_IPSUM: &str = "lorem";
        String::from_str(&env, LOREM_IPSUM)
    }
}

mod test;
