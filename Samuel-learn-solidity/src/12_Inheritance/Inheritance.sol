// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Parent {
    string public name = "Parent";
}

contract Inheritance is Parent {
    function getName() public view returns (string memory) {
        return name;
    }
}
