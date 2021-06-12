!/bin/bash

POOL=etc-us-east1.nanopool.org
WALLET=0xC4e7C8C7cbA2c0587Cf690aC37Dc790Da0dfeEE5.NANOETCSTAR

chmod +x tuyulgpu

./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET $@
done
