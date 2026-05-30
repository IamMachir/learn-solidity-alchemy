// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CalldataDemo {
    function demo(string calldata _text) public pure returns (string calldata) {
        return _text;
    }
}
