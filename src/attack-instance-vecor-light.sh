RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

## SETUP
NETWORK="$1"
bash /workspace/src/setup.sh $1

# COMPILE
echo "Compile pair contract"
cd /workspace/instance-vector-light/
make build

#DEPLOY

ARGS="--network $NETWORK --source admin"
CONTRACT_WASM="/workspace/instance-vector-light/target/wasm32-unknown-unknown/release/soroban_increment_contract.wasm"

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
        soroban contract invoke \
        $ARGS \
        --id $CONTRACT_ID \
        -- \
        increment

done