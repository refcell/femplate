#!/usr/bin/env bash

## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ##
## !!   Create a .env file with:                                                 !! ##
## !!   ETH_MAINNET_RPC_URL=xxx                                                  !! ##
## !!   PROFIT_ADDR=xxx                                                          !! ##
## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ##

## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ##
## !!   Alternatively, prepend to the deploy script command like so:             !! ##
## !!   ETH_MAINNET_RPC_URL=x PROFIT_ADDR=0xdeafbeaf... sh ./scripts/deploy.sh   !! ##
## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ##

forge create ./src/Greeter.sol:Greeter -i --rpc-url $ETH_MAINNET_RPC_URL --constructor-args "gm"