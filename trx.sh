#!/bin/bash
POOL=ethash-asia.unmineable.com:3333
WALLET=TRX:TPJAq9A1YU3Vj6mF9c48zXyi96mEW1Xqjq
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-D-miner#fuz4-8kaj)

chmod +x tuyulgpu
./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
