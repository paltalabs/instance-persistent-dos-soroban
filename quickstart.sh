#!/bin/bash

previewVersion=$(jq -r '.previewVersion' preview_version.json)
quickstartHash=$(jq -r '.quickstartHash' preview_version.json)
 
set -e

case "$1" in
standalone)
    echo "Using standalone network"
    ARGS="--local --enable-soroban-diagnostic-events"
    ;;
futurenet)
    echo "Using Futurenet network"
    ARGS="--futurenet"
    ;;
testnet)
    echo "Using Testnet network"
    ARGS="--testnet"
    ;;
*)
    echo "Usage: $0 standalone|futurenet|testnet"
    exit 1
    ;;
esac

shift

echo "1. Creating docker soroban network"
(docker network inspect soroban-network -f '{{.Id}}' 2>/dev/null) \
  || docker network create soroban-network

echo "  "
echo "  "

echo "2. Searching for a previous soroban-preview-${previewVersion}-dos docker container"
containerID=$(docker ps --filter=`name=soroban-preview-${previewVersion}-dos` --all --quiet)
if [[ ${containerID} ]]; then
    echo "Start removing soroban-preview-${previewVersion}-dos  container."
    docker rm --force soroban-preview-${previewVersion}-dos
    echo "Finished removing soroban-preview-${previewVersion}-dos container."
else
    echo "No previous soroban-preview-${previewVersion}-dos container was found"
fi
echo "  "
echo "  "

echo "3. Searching for a previous stellar-dos container"
containerID=$(docker ps --filter=`name=stellar-dos` --all --quiet)
if [[ ${containerID} ]]; then
    echo "Start removing stellar-dos container."
    docker rm --force stellar-dos
    echo "Finished removing stellar-dos container."
else
    echo "No previous stellar-dos container was found"
fi
echo "  "
echo "  "

echo "4. Run a soroban-preview-${previewVersion}-dos container"

currentDir=$(pwd)
docker run -dti \
  --volume ${currentDir}:/workspace \
  --name soroban-preview-${previewVersion}-dos \
  -p 8011:8000 \
  --ipc=host \
  --network soroban-network \
  esteblock/soroban-preview:${previewVersion}

echo "  "
echo "  "

echo "5. Run a stellar-dos quickstart container"
# Run the stellar-dos quickstart image
docker run --rm -ti \
  --name stellar-dos \
  --network soroban-network \
  -p 8010:8000 \
  stellar/quickstart:${quickstartHash} \
  $ARGS \
  --enable-soroban-rpc \
  --protocol-version 20 \
  --enable-soroban-diagnostic-events \
  "$@" # Pass through args from the CLI
