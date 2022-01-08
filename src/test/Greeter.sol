// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.11;

import "ds-test/test.sol";

import {Greeter} from "../Greeter.sol";

contract GreeterTest is DSTest {
    Greeter greeter;

    function setUp() public {
        greeter = new Greeter("gm");
    }

    function testSetGm() public {
        greeter.setGm("gm gm");
        greeter.gm("gm gm");
    }
}
