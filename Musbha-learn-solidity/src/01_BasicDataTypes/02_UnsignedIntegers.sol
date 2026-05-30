// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UnsignedIntegers {
    uint public myUint = 123;
    uint8 public smallUint = 255;
    uint256 public largeUint = 10**18;

    function setUint(uint _val) public {
        myUint = _val;
    }
}
