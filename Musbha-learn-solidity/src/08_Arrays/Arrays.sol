// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Arrays {
    uint[] public arr;
    uint[10] public fixedArr;

    function push(uint i) public {
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }
}
