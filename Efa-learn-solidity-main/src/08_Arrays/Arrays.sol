// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Arrays {
    uint[] public dynamicArray;
    uint[10] public fixedArray;

    function push(uint _i) public {
        dynamicArray.push(_i);
    }

    function pop() public {
        dynamicArray.pop();
    }

    function getLength() public view returns (uint) {
        return dynamicArray.length;
    }
}
