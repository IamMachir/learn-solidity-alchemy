// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StorageVariables {
    uint public myUint;
    string public myString;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function setMyString(string memory _myString) public {
        myString = _myString;
    }
}
