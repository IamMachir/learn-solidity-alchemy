// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CalldataDemo {
    function test(string calldata _str) public pure returns (string calldata) {
        return _str;
    }
}
