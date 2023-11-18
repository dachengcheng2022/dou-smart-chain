rm -Rf data/*
DATA_DIR=data
./prysmctl testnet generate-genesis --num-validators=3 --deposit-json-file=config/validator_keys/deposit_data-1700294788.json --output-ssz=data/genesis.ssz --chain-config-file=config/config.yml --geth-genesis-json-in=config/genesis.json --geth-genesis-json-out=data/genesis.json --fork=capella

./geth --datadir data init data/genesis.json