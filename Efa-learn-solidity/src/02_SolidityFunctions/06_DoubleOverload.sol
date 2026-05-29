// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DoubleOverload {
    function double(uint _i) public pure returns (uint) {
        return _i * 2;
    }

    function double(uint _i, uint _j) public pure returns (uint, uint) {
        return (_i * 2, _j * 2);
    }
}
