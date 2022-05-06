// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.12;

import {Greeter} from "../Greeter.sol";
import "forge-std/Test.sol";

contract GreeterTest is Test {
    Greeter greeter;

    function setUp() public {
        console.log("Testing Greeter.sol...");
        greeter = new Greeter("gm");
    }

    function testSetGm() public {
        greeter.setGm("gm gm");
        greeter.gm("gm gm");
        console.log("setGm() test passed");
    }
}
