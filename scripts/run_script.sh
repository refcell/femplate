#!/usr/bin/env bash

# Read the RPC URL
source .env

# Read script
echo Which script do you want to run?
read script

# Read script arguments
echo Enter script arguments, or press enter if none:
read -ra args

# Run the script
echo Running Script: $script...

# Run the script with interactive inputs
forge script $script \
    --rpc-url $RPC_URL \
    --broadcast \
    -vvvv \
    --private-key $DEPLOYER_KEY \
    $args
