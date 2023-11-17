curl --location --request POST 'http://127.0.0.1:8545' \
--header 'Content-Type: application/json' \
--data-raw '{
    "jsonrpc": "2.0",
    "method": "admin_addPeer",
    "params": ["enode://14a8fc675549faa5b2edaddf0111fa0d265bf2df26c7988168f63fbff55ce841b3de22e0603ef6e64934d17f39ddc465ffa8f76f007ee39225ebd4791cbcc02f@190.92.198.117:30303?discport=0"],
    "id": 0
}'

curl --location --request POST 'http://127.0.0.1:8545' \
--header 'Content-Type: application/json' \
--data-raw '{
    "jsonrpc": "2.0",
    "method": "admin_addTrustedPeer",
    "params": ["enode://14a8fc675549faa5b2edaddf0111fa0d265bf2df26c7988168f63fbff55ce841b3de22e0603ef6e64934d17f39ddc465ffa8f76f007ee39225ebd4791cbcc02f@190.92.198.117:30303?discport=0"],
    "id": 0
}'