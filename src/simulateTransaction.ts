import * as StellarSdk from "stellar-sdk";
let serverUrl="http://stellar-dos:8000/soroban/rpc"
let publicKey="GDJEE7X32JZ36GSAZ36RHM2LV6K6YQD4R4GHYXGNYJHNJ3UR6IBIL3HD"
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
    console.log("🚀 ~ main ~ preparedTransaction:", preparedTransaction)
    
    // // Sign this transaction with the secret key
    // // NOTE: signing is transaction is network specific. Test network transactions
    // // won't work in the public network. To switch networks, use the Network object
    // // as explained above (look for StellarSdk.Network).
    // const sourceSecretKey = "SAUHH63AQVK6KP4QMF6IILS7SWC7NXULN4X5CJEV763DQ7GY227ZG7JD";
    // const sourceKeypair = StellarSdk.Keypair.fromSecret(sourceSecretKey);
    // const simulatedTransaction = await server.simulateTransaction(preparedTransaction);

    // console.log("simulatedTransaction:");
    // console.log(simulatedTransaction);
    
    // console.log("simulatedTransaction.transactionData:");
    // type simulatedTransactionKey = keyof typeof simulatedTransaction;
    // const transactionDataVar = 'transactionData' as simulatedTransactionKey;
    // const transactionData = simulatedTransaction[transactionDataVar];
    // console.log(transactionData);

    // console.log("\nsimulatedTransaction.transactionData._data:")
    // type sorobanDataBuilderKey = keyof typeof transactionData;
    // const dataVar = '_data' as sorobanDataBuilderKey;
    // const _data = transactionData[dataVar]
    // console.log(_data);

    // console.log("\nsimulatedTransaction.transactionData._data._attributes:")
    // type childStructKey = keyof typeof _data;
    // const attributesVar = '_attributes' as childStructKey;
    // const _attributes = _data[attributesVar];
    // console.log(_attributes);

    // console.log("\nsimulatedTransaction.transactionData._data._attributes.resourceFee:")
    // type attributesKey = keyof typeof _attributes;
    // const resourceFeeVar = 'resourceFee' as attributesKey;
    // const resourceFee = _attributes[resourceFeeVar];
    // console.log(resourceFee);

    // console.log("\nsimulatedTransaction.transactionData._data._attributes.resourceFee._value:")
    // type resourceFeeKey = keyof typeof resourceFee;
    // const valueVar = '_value' as resourceFeeKey;
    // const _value = resourceFee[valueVar];
    // console.log(_value);

    

    // preparedTransaction.sign(sourceKeypair);
    
    // // server.sendTransaction(transaction).then(result => {
    // //   console.log("hash:", result.hash);
    // //   console.log("status:", result.status);
    // //   console.log("result:", result);
    // // });
}

main();