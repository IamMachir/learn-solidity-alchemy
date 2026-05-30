// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    struct User {
        uint balance;
        bool isActive;
    }

    mapping(address => bool) public members;
    mapping(address => User) public users;
    mapping(address => mapping(address => ConnectionTypes)) public connections;

    enum ConnectionTypes { Unacquainted, Friend, Family, Spouse }

    function addMember(address _addr) external {
        members[_addr] = true;
    }

    function removeMember(address _addr) external {
        members[_addr] = false;
    }

    function isMember(address _addr) external view returns (bool) {
        return members[_addr];
    }

    function createUser() external {
        require(!users[msg.sender].isActive, "User already exists");
        users[msg.sender] = User({ balance: 100, isActive: true });
    }

    function transfer(address _recipient, uint _amount) external {
        require(users[msg.sender].isActive, "Sender not active");
        require(users[_recipient].isActive, "Recipient not active");
        require(users[msg.sender].balance >= _amount, "Insufficient balance");
        users[msg.sender].balance  -= _amount;
        users[_recipient].balance  += _amount;
    }

    function connectWith(address other, ConnectionTypes connectionType) external {
        connections[msg.sender][other] = connectionType;
    }
}
