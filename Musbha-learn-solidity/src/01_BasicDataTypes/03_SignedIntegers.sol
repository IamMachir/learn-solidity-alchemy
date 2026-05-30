// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SignedIntegers {
    int public myInt = -123;
    int8 public smallInt = -128;

    function setInt(int _val) public {
        myInt = _val;
    }
}
