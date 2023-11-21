./beacon-chain --datadir=data \
--min-sync-peers=0  \
--genesis-state=data/genesis.ssz  \
--bootstrap-node=  \
--chain-config-file=config/config.yml  \
--config-file=config/config.yml  \
--chain-id=97823  \
--network-id=97823  \
--rpc-host=0.0.0.0  \
--contract-deployment-block=0  \
--grpc-gateway-host=0.0.0.0  \
--monitoring-host=0.0.0.0  \
--execution-endpoint=http://localhost:8551  \
--accept-terms-of-use  \
--jwt-secret=config/jwtsecret  \
--verbosity=debug \
--p2p-local-ip=127.0.0.1 \
--p2p-host-ip=190.92.198.117 \
--p2p-static-id