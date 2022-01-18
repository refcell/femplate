# include .env file and export its env vars
# (-include to ignore error if it does not exist)
-include .env

all: clean update solc build dappbuild

# Install proper solc version.
solc:; nix-env -f https://github.com/dapphub/dapptools/archive/master.tar.gz -iA solc-static-versions.solc_0_8_11

# deps
update:; forge update

# Build & test
build  :; forge clean && forge build --optimize --optimize-runs 1000000
dappbuild :; dapp build
test   :; forge clean && forge test --optimize --optimize-runs 1000000 -v # --ffi # enable if you need the `ffi` cheat code on HEVM
clean  :; forge clean
snapshot :; forge clean && forge snapshot --optimize --optimize-runs 1000000
lint :; prettier --write src/**/*.sol