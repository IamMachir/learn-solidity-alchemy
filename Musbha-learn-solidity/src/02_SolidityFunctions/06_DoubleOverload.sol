// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DoubleOverload {
    function double(uint x) public pure returns (uint) {
        return x * 2;
    }

    function double(uint x, uint y) public pure returns (uint, uint) {
        return (x * 2, y * 2);
    }
}
