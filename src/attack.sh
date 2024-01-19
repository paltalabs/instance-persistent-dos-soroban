RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

## SETUP
NETWORK="$1"
CONTRACT="$2"
bash /workspace/src/setup.sh $1

echo "We will attack the $2 contract"
transformed_name_for_wasm=$(echo "$2" | tr '-' '_')

# COMPILE
echo "Compile pair contract"
cd /workspace/$2/
make build

#DEPLOY

ARGS="--network $NETWORK --source admin"
CONTRACT_WASM="/workspace/$2/target/wasm32-unknown-unknown/release/$transformed_name_for_wasm.wasm"

CONTRACT_ID="$(
  soroban contract deploy $ARGS \
    --wasm $CONTRACT_WASM
)"
echo -e "${GREEN} The contract was deployed with ADDRESS: $CONTRACT_ID . ${NC}"
echo $CONTRACT_ID > /workspace/.contract_id

echo " "
echo " "
echo -e "${RED} ====== ${NC}"

# ATTACK

for ((j=1; j<999999999; j++)); do

        echo -e "${GREEN} Pushing to VECTOR A, attempt N° $j ${NC}"
        RESPONSE=$(soroban contract invoke \
        $ARGS \
        --id $CONTRACT_ID \
        -- \
        increment_a 2>&1) ## To capture the message

        if [ -n "$RESPONSE" ]; then
            echo "Contract invocation failed with the following message: $RESPONSE"
            break
        else
        echo "Contract invocation successful. No error message received."

        ## Simulate the costs

        # yarn --silent ts-node /workspace/src/simulateTransaction.ts increment_a
        echo "              .."
        j_minus_1=$((j - 1))
        # yarn --silent ts-node /workspace/src/simulateTransaction.ts get_address_a $j_minus_1
        echo "              .."
        # yarn --silent ts-node /workspace/src/simulateTransaction.ts get_lorem_ipsum


        fi

        echo -e "${GREEN} Pushing to VECTOR B, attempt N° $j ${NC}"
        RESPONSE=$(soroban contract invoke \
        $ARGS \
        --id $CONTRACT_ID \
        -- \
        increment_b 2>&1) ## To capture the message

        if [ -n "$RESPONSE" ]; then
            echo "Contract invocation failed with the following message: $RESPONSE"
            break
        else
        echo "Contract invocation successful. No error message received."

        ## Simulate the costs

        # yarn --silent ts-node /workspace/src/simulateTransaction.ts increment_b
        echo "              .."
        j_minus_1=$((j - 1))
        # yarn --silent ts-node /workspace/src/simulateTransaction.ts get_address_b $j_minus_1
        echo "              .."
        # yarn --silent ts-node /workspace/src/simulateTransaction.ts get_lorem_ipsum
        fi
done