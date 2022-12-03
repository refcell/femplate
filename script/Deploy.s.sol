// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {Script} from 'forge-std/Script.sol';

import {Greeter} from "src/Greeter.sol";

/// @notice A very simple deployment script
contract Deploy is Script {

  /// @notice The main script entrypoint
  /// @return greeter The deployed contract
  function run() external returns (Greeter greeter) {
    vm.startBroadcast();
    greeter = new Greeter("GM");
    vm.stopBroadcast();
  }
}