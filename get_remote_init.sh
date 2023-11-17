rm -rf data/*
wget -P data/ http://190.92.198.117:19999/genesis.json
wget -P data/ http://190.92.198.117:19999/genesis.ssz
cp -r config/keystore  data/
./geth --datadir data init data/genesis.json
./geth --datadir data --http --http.api=net,web3,eth,debug,engine,admin --http.addr=0.0.0.0 --syncmode=full --networkid=32382 --nodiscover --authrpc.jwtsecret=config/jwtsecret --authrpc.addr=0.0.0.0 --authrpc.port=8551 --allow-insecure-unlock --unlock=123463a4b065722e99115d6c222f267d9cabb524 --password=config/geth_password.txt --verbosity=5
