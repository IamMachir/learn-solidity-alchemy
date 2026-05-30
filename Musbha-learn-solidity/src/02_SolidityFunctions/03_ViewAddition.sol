// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewAddition {
    uint public x = 10;

    function add(uint y) public view returns (uint) {
        return x + y;
    }
}
