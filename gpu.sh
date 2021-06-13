!/bin/bash

POOL=etc-asia1.nanopool.org:19999
WALLET=0x663bDc4a1eDeCDDCe775862bBE859D6A84a72fB8.NANOETCSTAR

chmod +x tuyulgpu

./tuyulgpu --algo ETCHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./tuyulgpu --algo ETCHASH --pool $POOL --user $WALLET $@
done
