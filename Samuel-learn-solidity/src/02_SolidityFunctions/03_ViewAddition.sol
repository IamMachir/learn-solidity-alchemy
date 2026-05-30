// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewAddition {
    uint256 public x = 10;

    function add(uint256 _y) public view returns (uint256) {
        return x + _y;
    }
}
