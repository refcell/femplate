// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.12;

/// @title Greeter
/// @author Andreas Bigger <andreas@nascent.xyz>
contract Greeter {
  string public _gm;

  constructor(string memory newGm) {
    _gm = newGm;
  }

  function gm(string memory myGm) public view returns(string memory greeting) {
    require(keccak256(abi.encodePacked((myGm))) == keccak256(abi.encodePacked((greeting = _gm))), "WRONG_GM");
  }

  function setGm(string memory newGm) public {
    _gm = newGm;
  }
}
