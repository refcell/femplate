# foundry-starter  • [![tests](https://github.com/abigger87/foundry-starter/actions/workflows/tests.yml/badge.svg)](https://github.com/abigger87/foundry-starter/actions/workflows/tests.yml) [![lints](https://github.com/abigger87/foundry-starter/actions/workflows/lints.yml/badge.svg)](https://github.com/abigger87/foundry-starter/actions/workflows/lints.yml) ![GitHub](https://img.shields.io/github/license/abigger87/foundry-starter) ![GitHub package.json version](https://img.shields.io/github/package-json/v/abigger87/foundry-starter)

Backwards Compatible Template for Foundry and DappTools Projects 

## Blueprint

```ml
lib
├─ ds-test — https://github.com/dapphub/ds-test
├─ forge-std — https://github.com/brockelmore/forge-std
├─ solmate — https://github.com/Rari-Capital/solmate
├─ clones-with-immutable-args — https://github.com/wighawag/clones-with-immutable-args
src
├─ tests
│  └─ Greeter.t — "Greeter Tests"
└─ Greeter — "A Minimal Greeter Contract"
```

## Development

[foundry-starter](https://github.com/abigger87/foundry-starter) is intended to be minimal while also providing backwards compatibility. Thus, both [DappTools](https://dapp.tools/) and [Foundry](https://github.com/gaskonst/foundry) are supported. Installation instructions for both are included below.
#### Install DappTools

Install DappTools using their [installation guide](https://github.com/dapphub/dapptools#installation).

#### First time with Forge/Foundry?

See the official Foundry installation [instructions](https://github.com/gakonst/foundry/blob/master/README.md#installation).

Don't have [rust](https://www.rust-lang.org/tools/install) installed?
Run
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Then, install the [foundry](https://github.com/gakonst/foundry) toolchain installer (`foundryup`) with:
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

#### Setup

```bash
make
# OR #
make setup
```

#### Build

```bash
make build
```

#### Run Tests

```bash
make test
```

#### Configure Foundry

Using [foundry.toml](./foundry.toml), Foundry is easily configurable.

## License

[AGPL-3.0-only](https://github.com/abigger87/foundry-starter/blob/master/LICENSE)

# Acknowledgements

- [foundry](https://github.com/gakonst/foundry)
- [solmate](https://github.com/Rari-Capital/solmate)
- [forge-std](https://github.com/brockelmore/forge-std)
- [clones-with-immutable-args](https://github.com/wighawag/clones-with-immutable-args).
- [foundry-toolchain](https://github.com/onbjerg/foundry-toolchain) by [onbjerg](https://github.com/onbjerg).
- [forge-template](https://github.com/FrankieIsLost/forge-template) by [FrankieIsLost](https://github.com/FrankieIsLost).
- [Georgios Konstantopoulos](https://github.com/gakonst) for [forge-template](https://github.com/gakonst/forge-template) resource.

## Disclaimer

_These smart contracts are being provided as is. No guarantee, representation or warranty is being made, express or implied, as to the safety or correctness of the user interface or the smart contracts. They have not been audited and as such there can be no assurance they will work as intended, and users may experience delays, failures, errors, omissions, loss of transmitted information or loss of funds. The creators are not liable for any of the foregoing. Users should proceed with caution and use at their own risk._
