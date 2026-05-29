// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewAddition {
    uint public num = 10;

    function add(uint _i) public view returns (uint) {
        return num + _i;
    }
}
