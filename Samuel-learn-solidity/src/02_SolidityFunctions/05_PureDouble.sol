// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PureDouble {
    function double(uint256 _x) public pure returns (uint256) {
        return _x * 2;
    }
}
