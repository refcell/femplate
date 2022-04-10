# include .env file and export its env vars
# (-include to ignore error if it does not exist)
-include .env

all: clean install update build

# Clean the repo
clean :; forge clean

# Install the Modules
install :; forge install

# Update Dependencies
update :; forge update

# Builds
build :; forge build 

# chmod scripts
scripts :; chmod +x ./scripts/*

# Tests
test :; forge test 

# Lints
lint :; prettier --write src/**/*.sol && prettier --write src/*.sol

# Generate Gas Snapshots
snapshot :; forge snapshot 

# Rename all instances of ft with the new repo name
rename :; chmod +x ./scripts/* && ./scripts/rename.sh