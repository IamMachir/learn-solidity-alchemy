// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Arrays {
    uint256[] public dynamicArray;
    uint256[5] public fixedArray;

    function add(uint256 _i) public {
        dynamicArray.push(_i);
    }

    function getLength() public view returns (uint256) {
        return dynamicArray.length;
    }
}
