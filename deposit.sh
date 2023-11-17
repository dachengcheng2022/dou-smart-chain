#value is eth transaction
./ethctl beacon deposit  --allow-unknown-contract="true" \
--allow-excessive-deposit="true" \
--address="0x3e839677d23d9b7b0df00ed0c67750aa6412b75d" \
--connection=http://localhost:8545/  \
--data="config/validator_keys/deposit_data-1699803902.json"  \
--value="1024" --from="0x123463a4B065722E99115D6c222f267d9cABb524" \
--privatekey="2e0834786285daccd064ca17f1654f67b4aef298acbb82cef9ec422fb4975622"

./ethctl beacon deposit  --allow-unknown-contract="true" \
--allow-excessive-deposit="true" \
--address="0x3e839677d23d9b7b0df00ed0c67750aa6412b75d" \
--connection=http://localhost:8545/  \
--data="config/validator_keys/deposit_data-1699781568.json"  \
--value="1024" --from="0x123463a4B065722E99115D6c222f267d9cABb524" \
--privatekey="2e0834786285daccd064ca17f1654f67b4aef298acbb82cef9ec422fb4975622"