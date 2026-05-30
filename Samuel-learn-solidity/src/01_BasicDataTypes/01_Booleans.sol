// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Booleans {
    bool public isTrue = true;
    bool public isFalse = false;

    function toggle() public {
        isTrue = !isTrue;
    }
}
