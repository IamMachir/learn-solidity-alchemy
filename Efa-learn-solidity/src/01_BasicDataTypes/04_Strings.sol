// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Strings {
    string public message = "Hello, Solidity!";

    function setMessage(string memory _newMessage) public {
        message = _newMessage;
    }
}
