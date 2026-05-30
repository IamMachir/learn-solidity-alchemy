// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    function setA(uint256 _a) public onlyOwner { a = _a; }
    function setB(uint256 _b) public onlyOwner { b = _b; }
    function setC(uint256 _c) public onlyOwner { c = _c; }
}
