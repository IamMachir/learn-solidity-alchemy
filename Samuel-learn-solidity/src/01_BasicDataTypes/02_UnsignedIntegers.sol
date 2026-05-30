// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UnsignedIntegers {
    uint8 public smallNum = 255;
    uint256 public largeNum = 123456789;

    function add(uint256 _val) public {
        largeNum += _val;
    }
}
