RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

## SETUP
NETWORK="$1"
bash /workspace/src/setup.sh $1

# COMPILE
echo "Compile pair contract"
cd /workspace/instance-vector-heavy/
make build

#DEPLOY

ARGS="--network $NETWORK --source admin"
CONTRACT_WASM="/workspace/instance-vector-heavy/target/wasm32-unknown-unknown/release/instance_vector_heavy.wasm"

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

        echo -e "${GREEN} Pushing the vector $j ${NC}"
        RESPONSE=$(soroban contract invoke \
        $ARGS \
        --id $CONTRACT_ID \
        -- \
        increment)

        if [ -n "$RESPONSE" ]; then
            echo "Contract invocation failed with the following message: $RESPONSE"
            break
        else
        echo "Contract invocation successful. No error message received."
        fi
done