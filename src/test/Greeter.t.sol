// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.12;

import {Greeter} from "../Greeter.sol";
import {DSTestPlus} from "./utils/DSTestPlus.sol";

contract GreeterTest is DSTestPlus {
    Greeter greeter;

    function setUp() public {
        console.log(unicode"🧪 Testing Greeter.sol...");
        greeter = new Greeter("gm");
    }

    function testSetGm() public {
        greeter.setGm("gm gm");
        greeter.gm("gm gm");
        console.log(unicode"✅ setGm() test passed");
    }
}
