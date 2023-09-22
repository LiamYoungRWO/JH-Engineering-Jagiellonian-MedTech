use solana_client::rpc_client::RpcClient;

pub async fn get_total_value_locked() -> Result<f64, SolanaClientError> {
    let client = RpcClient::new("https://api.mainnet-beta.solana.com");

    let tvl = client
        .get_total_value_locked()
        .await?
        .total_value_locked;

    Ok(tvl)
}
