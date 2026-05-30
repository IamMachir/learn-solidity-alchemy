// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StorageVariables {
    uint256 public storedValue;

    function set(uint256 _value) public {
        storedValue = _value;
    }
}
