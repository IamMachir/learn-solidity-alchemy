// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UnsignedIntegers {
    uint8 public smallNumber = 255;
    uint256 public largeNumber = 123456789;

    function add(uint _value) public {
        largeNumber += _value;
    }
}
