// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.12;

import {DSTest} from "ds-test/test.sol";
import {stdCheats, stdError} from "forge-std/stdlib.sol";
import {Vm} from "forge-std/Vm.sol";

contract DSTestPlus is DSTest, stdCheats {
    /// @dev Use forge-std Vm logic
    Vm public constant vm = Vm(HEVM_ADDRESS);
}