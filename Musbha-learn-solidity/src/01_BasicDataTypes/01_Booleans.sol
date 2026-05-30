// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Booleans {
    bool public myBool = true;

    function setBool(bool _val) public {
        myBool = _val;
    }

    function getBool() public view returns (bool) {
        return myBool;
    }
}
