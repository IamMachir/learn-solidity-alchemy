// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DoubleOverload {
    function double(uint256 _x) public pure returns (uint256) {
        return _x * 2;
    }

    function double(uint256 _x, uint256 _y) public pure returns (uint256, uint256) {
        return (_x * 2, _y * 2);
    }
}
