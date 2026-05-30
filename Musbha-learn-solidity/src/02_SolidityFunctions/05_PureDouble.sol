// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PureDouble {
    function double(uint x) public pure returns (uint) {
        return x * 2;
    }
}
