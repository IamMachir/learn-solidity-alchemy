// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SignedIntegers {
    int public negativeNumber = -100;
    int public positiveNumber = 100;

    function subtract(int _value) public {
        negativeNumber -= _value;
    }
}
