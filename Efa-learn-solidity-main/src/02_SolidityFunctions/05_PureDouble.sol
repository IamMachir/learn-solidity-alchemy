// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PureDouble {
    function double(uint _i) public pure returns (uint) {
        return _i * 2;
    }
}
