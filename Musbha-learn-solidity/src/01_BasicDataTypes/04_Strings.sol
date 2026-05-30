// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Strings {
    string public myString = "Hello Solidity";

    function setString(string memory _val) public {
        myString = _val;
    }
}
