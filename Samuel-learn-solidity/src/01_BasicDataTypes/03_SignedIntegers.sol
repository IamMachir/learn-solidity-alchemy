// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SignedIntegers {
    int8 public negativeNum = -128;
    int256 public standardInt = 100;

    function subtract(int256 _val) public {
        standardInt -= _val;
    }
}
