#!/usr/bin/env bash

## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ##
## !!   Create a .env file with:                                                 !! ##
## !!   ETH_LOCAL_RPC_URL=xxx                                                    !! ##
## !!   PROFIT_ADDR=xxx                                                          !! ##
## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ##

## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ##
## !!   Alternatively, prepend to the deploy script command like so:             !! ##
## !!   ETH_LOCAL_RPC_URL=x PROFIT_ADDR=0xdeafbeaf... sh ./scripts/deploy.sh     !! ##
## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ##

## Fork Mainnet
make mainnet-fork &

## Wait for the fork to spawn before deploying
sleep 10 && forge create ./src/Greeter.sol:Greeter --private-key $DEPLOYER_PRIVATE_KEY --rpc-url $ETH_LOCAL_RPC_URL --constructor-args "gm"
