# instance-persistent-dos-soroban
A Repo to replicate a DoS situation when using instance or persistent storage wih Vectors or Mappings in Soroban

# Situation 1: Instance, vector, light
This contract stores information in a **vector** that increases in using **instance** type of storage. But the contract is very light.

1.- Check and test the contract
```bash
bash quickstart.sh standalone
bash run.sh
cd instance-vector-light
make build
make test
```

2.- Do a DoS attack to the contract and check how many entries does the contract support:
```bash
bash src/attack-instance-vecor-light.sh standalone
```