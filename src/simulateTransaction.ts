import * as StellarSdk from "stellar-sdk";
import * as fs from 'fs';

const functionName = process.argv[2];
const argument = process.argv[3];
console.log("               Cost Simulation: functionName:", functionName)
if  (argument){
    console.log("               Cost Simulation: argument:", argument)

}

// Function to read the content of a file
function readFromFile(filePath: string): string {
    try {
      return fs.readFileSync(filePath, 'utf-8').trim();
    } catch (error) {
      console.error(`Error reading file ${filePath}: ${error}`);
      process.exit(1);
    }
  }

// Read public key from file
const publicKeyFilePath = '/workspace/.admin_public_key';
const publicKey = readFromFile(publicKeyFilePath);

// Read secret key from file
const sourceSecretKeyFilePath = '/workspace/.admin_private_key';
const sourceSecretKey = readFromFile(sourceSecretKeyFilePath);

// Read contract ID from file
const contractIdFilePath = '/workspace/.contract_id';
const contractId = readFromFile(contractIdFilePath);


let serverUrl="http://stellar-dos:8000/soroban/rpc"
let networkPassphrase = StellarSdk.Networks.STANDALONE;


async function main() {
    const targetContract = new StellarSdk.Contract(contractId);
    
    // Right now, this is just the default fee for this example.
    const fee = StellarSdk.BASE_FEE;



    let scValParams: any = [];
    if  (argument){       
         scValParams = [
            StellarSdk.nativeToScVal(Number(argument), { type: "u32" }),
        ];
    }

    const op = targetContract.call(functionName, ...scValParams);
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
    console.log("               Cost Simulation: minResourceFee:", minResourceFee)

    type costKey = keyof typeof simulatedTransaction;
    const costVar = 'cost' as costKey;
    const cost = simulatedTransaction[costVar];
    console.log("               Cost Simulation: cost:", cost)
}

main();