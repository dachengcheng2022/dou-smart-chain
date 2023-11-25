wget -P douchain/ https://raw.githubusercontent.com/dachengcheng2022/genesis-ethpos-docker/master/public/genesis.json
wget -P douchain/ https://raw.githubusercontent.com/dachengcheng2022/genesis-ethpos-docker/master/public/genesis.ssz
cp /Applications/dou-smart-chain/config/config.toml /Users/yechiel.liu/Library/douchain/geth/
./bootnode --genkey=config/enode.key --writeaddress
rm -rf /Users/yechiel.liu/Library/douchain/
./geth  init douchain/genesis.json
./geth \
--http \
--http.api=net,web3,eth,debug,engine,admin \
--http.addr=0.0.0.0 \
--authrpc.jwtsecret=config/jwtsecret \
--authrpc.addr=0.0.0.0 \
--authrpc.port=8551  \
--verbosity=5 \
--nodekey=config/enode.key \
--nat=extip:190.92.198.117