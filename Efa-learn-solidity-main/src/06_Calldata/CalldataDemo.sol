// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CalldataDemo {
    function externalCall(string calldata _text) external pure returns (string calldata) {
        return _text;
    }

    function memoryCall(string memory _text) public pure returns (string memory) {
        return _text;
    }
}
