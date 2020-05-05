#!/bin/sh

wget https://github.com/webchain-network/miner/releases/download/v2.8.0/webchain-miner-2.8.0-linux-amd64.tar.gz
tar xfz webchain-miner-2.8.0-linux-amd64.tar.gz

sed -i 's/YOUR_WALLET/0x7fc9c901af13b5f1b071139843c1c4185063b2c8/g' config.json
echo "wallet updated"

sed -i 's/pool.webchain.network:3333/pool.webchain.network:2222/g' config.json
echo "pool updated"

sed -i 's/donate-level": 5/donate-level": 1/g' config.json
sed -i 's/"max-cpu-usage": 75,/"max-cpu-usage": 95,/g' config.json
