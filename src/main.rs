// src/main.rs

extern crate reqwest;

const SOLANA_API_URL: &str = "https://api.mainnet-beta.solana.com";

fn main() {
    let endpoint = format!("{}/v1/getEpochInfo", SOLANA_API_URL);
    let response: serde_json::Value = reqwest::blocking::get(&endpoint)
        .unwrap()
        .json()
        .unwrap();

    println!("Current Epoch Information: {:?}", response);
}
