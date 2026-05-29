// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }
}

contract Inheritance is Ownable {
    uint public data;

    function setData(uint _data) public onlyOwner {
        data = _data;
    }
}
