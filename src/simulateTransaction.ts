import * as StellarSdk from "stellar-sdk";
let serverUrl="http://stellar-dos:8000/soroban/rpc"
let publicKey="GDJEE7X32JZ36GSAZ36RHM2LV6K6YQD4R4GHYXGNYJHNJ3UR6IBIL3HD"
let sourceSecretKey = "SB7SHJQOH6DKPLIJ456RU6JALUKEUU2TCT2EHF2WDTZ2MI73G6DZKQUL";
let networkPassphrase = StellarSdk.Networks.STANDALONE;

async function main() {
    const contractId = 'CCBCWJCMEEWHUV5AUZSIG74TX5K2UHBWJKABEADHBBFVGHHGUCZUUMD5';
    const targetContract = new StellarSdk.Contract(contractId);
    
    // Right now, this is just the default fee for this example.
    const fee = StellarSdk.BASE_FEE;
    const args = {}
    const scValParams: any = [];
    const op = targetContract.call("increment_a", ...scValParams);
    const server = new StellarSdk.SorobanRpc.Server(serverUrl, {
        allowHttp: true
    });
    const account = await server.getAccount(publicKey);
    const transaction = new StellarSdk.TransactionBuilder(account, { fee })
    //   // Uncomment the following line to build transactions for the live network. Be
    //   // sure to also change the horizon hostname.
    //   //.setNetworkPassphrase(StellarSdk.Networks.PUBLIC)
    .setNetworkPassphrase(networkPassphrase)
      .setTimeout(30) // valid for the next 30s
      // Add an operation 
      .addOperation(op)
      .build();
    
    const preparedTransaction = await server.prepareTransaction(transaction);
    // console.log("🚀 ~ main ~ preparedTransaction:", preparedTransaction)
    
    // // Sign this transaction with the secret key
    // // NOTE: signing is transaction is network specific. Test network transactions
    // // won't work in the public network. To switch networks, use the Network object
    // // as explained above (look for StellarSdk.Network).
    const sourceKeypair = StellarSdk.Keypair.fromSecret(sourceSecretKey);
    const simulatedTransaction = await server.simulateTransaction(preparedTransaction);

    type simulatedTransactionKey = keyof typeof simulatedTransaction;
    const minResourceFeeVar = 'minResourceFee' as simulatedTransactionKey;
    const minResourceFee = simulatedTransaction[minResourceFeeVar];
    console.log("🚀 ~ main ~ minResourceFee:", minResourceFee)

    type costKey = keyof typeof simulatedTransaction;
    const costVar = 'cost' as costKey;
    const cost = simulatedTransaction[costVar];
    console.log("🚀 ~ main ~ cost:", cost)
}

main();