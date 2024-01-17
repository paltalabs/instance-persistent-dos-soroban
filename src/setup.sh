# Run script from project root
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

set -e

NETWORK="$1"


# If soroban-cli is called inside the soroban-preview docker containter,
# it can call the stellar standalone container just using its name "stellar"
SOROBAN_RPC_HOST="http://stellar-dos:8000"
SOROBAN_RPC_URL="$SOROBAN_RPC_HOST/soroban/rpc"

case "$1" in
standalone)
  echo "Using standalone network"
  SOROBAN_NETWORK_PASSPHRASE="Standalone Network ; February 2017"
  FRIENDBOT_URL="$SOROBAN_RPC_HOST/friendbot"
  ;;
futurenet)
  echo "Using Futurenet network"
  SOROBAN_NETWORK_PASSPHRASE="Test SDF Future Network ; October 2022"
  FRIENDBOT_URL="https://friendbot-futurenet.stellar.org/"
  ;;
testnet)
  echo "Using Testnet network"
  SOROBAN_NETWORK_PASSPHRASE="Test SDF Network ; September 2015"
  FRIENDBOT_URL="https://friendbot.stellar.org/"
  SOROBAN_RPC_URL="https://soroban-testnet.stellar.org/"
  ;;
testnet-public)
  echo "Using Futurenet network with public RPC https://soroban-testnet.stellar.org/"
  SOROBAN_NETWORK_PASSPHRASE="Test SDF Network ; September 2015"
  FRIENDBOT_URL="https://friendbot.stellar.org/"
  SOROBAN_RPC_URL="https://soroban-testnet.stellar.org/"
  ;;
*)
  echo "Usage: $0 standalone|futurenet|testnet|testnet-public"
  exit 1
  ;;
esac

echo -e "${RED} ====== ${NC}"
echo "   "
echo SOROBAN_NETWORK_PASSPHRASE: $SOROBAN_NETWORK_PASSPHRASE
echo FRIENDBOT_URL: $FRIENDBOT_URL
echo SOROBAN_RPC_URL: $SOROBAN_RPC_URL
echo "   "
echo -e "${RED} ====== ${NC}"

# Always set a net configuration 
echo Add the $NETWORK network to cli client
soroban config network add "$NETWORK" \
  --rpc-url "$SOROBAN_RPC_URL" \
  --network-passphrase "$SOROBAN_NETWORK_PASSPHRASE"

if !(soroban config identity ls | grep admin 2>&1 >/dev/null); then
  echo Create the admin identity
  soroban config identity generate admin
fi

echo Fund token-admin account from friendbot
echo This will fail if the account already exists, but it\' still be fine.
ADMIN_ADDRESS="$(soroban config identity address admin)"
curl  -X POST "$FRIENDBOT_URL?addr=$ADMIN_ADDRESS"

echo "   "
echo " "
echo -e "${RED} ====== ${NC}"

