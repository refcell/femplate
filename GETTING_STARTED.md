## Getting Started

This is a guide to get you started with [refcell/femplate](https://github.com/refcell/femplate).

### Installing

Click [`use this template`](https://github.com/refcell/femplate/generate) to create a new repository with this repo as the initial state.

Or, if your repo already exists, run:
```sh
forge init --template https://github.com/refcell/femplate
git submodule update --init --recursive
forge install
```

Run `./utils/rename.sh` to rename all instances of `femplate` with the name of your project/repository.


### First time with Forge/Foundry?

See the official Foundry installation [instructions](https://github.com/foundry-rs/foundry/blob/master/README.md#installation).

Then, install the [foundry](https://github.com/foundry-rs/foundry) toolchain installer (`foundryup`) with:
```bash
curl -L https://foundry.paradigm.xyz | bash
```

Now that you've installed the `foundryup` binary,
anytime you need to get the latest `forge` or `cast` binaries,
you can run `foundryup`.

So, simply execute:
```bash
foundryup
```

🎉 Foundry is installed! 🎉


### Writing Tests with Foundry

With [Foundry](https://github.com/foundry-rs/foundry), all tests are written in Solidity! 🥳

Create a test file for your contract in the `test/` directory.

For example, [`src/Greeter.sol`](./src/Greeter.sol) has its test file defined in [`./test/Greeter.t.sol`](./test/Greeter.t.sol).

To learn more about writing tests in Solidity for Foundry, reference Rari Capital's [solmate](https://github.com/Rari-Capital/solmate/tree/main/src/test) repository created by [@transmissions11](https://twitter.com/transmissions11).

### Configure Foundry

Using [foundry.toml](./foundry.toml), Foundry is easily configurable.

For a full list of configuration options, see the Foundry [configuration documentation](https://github.com/foundry-rs/foundry/blob/master/config/README.md#all-options).


### That's it!

Now you are all set up to start building your project with femplate!

Navigate back to the [Readme](./README.md) to resume your setup!
