rm -Rf data/*
DATA_DIR=data
./prysmctl testnet generate-genesis --num-validators=64 --output-ssz=${DATA_DIR}/genesis.ssz --chain-config-file=config/config.yml \
                     --geth-genesis-json-in=config/genesis.json --geth-genesis-json-out=data/genesis.json --fork=capella

./geth --datadir data init data/genesis.json
cp -r config/keystore  data/