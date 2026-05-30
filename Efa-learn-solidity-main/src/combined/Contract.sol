// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CombinedContract {
    address public owner;
    mapping(address => uint) public balances;
    
    struct User {
        string name;
        bool exists;
    }
    
    mapping(address => User) public users;

    constructor() {
        owner = msg.sender;
    }

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function register(string memory _name) public {
        users[msg.sender] = User(_name, true);
    }
}
