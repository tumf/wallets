wallets
=======

This is a base envs for Docker.


    mkdir /wallets/uncoin

/wallets/uncoin/uncoin.conf

```
server=1
listen=1
gen=0

rpcport=9000
rpcconnect=0.0.0.0
rpcallowip=172.*

rpcuser=bitcoinrpc
rpcpassword=<PASSWORD>
```

    docker run -it -u guest \
      -v /etc/localtime:/etc/localtime:ro \
      -v /wallets/uncoin:/home/guest/.uncoin \
      quay.io/tumf/wallets:uncoin \
      /usr/bin/uncoin
