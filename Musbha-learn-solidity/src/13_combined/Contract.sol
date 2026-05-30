// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Combined Contract
 * @dev A contract demonstrating multiple Solidity features.
 */
contract Combined {
    address public owner;
    uint public constant MAX_LIMIT = 100;
    
    struct User {
        string name;
        uint balance;
    }
    
    mapping(address => User) public users;
    uint[] public userList;

    event UserAdded(address indexed userAddress, string name);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    function addUser(string memory _name) public payable {
        require(msg.value > 0, "Must send some ether");
        require(bytes(_name).length > 0, "Name cannot be empty");
        
        users[msg.sender] = User(_name, msg.value);
        emit UserAdded(msg.sender, _name);
    }

    function withdraw() public onlyOwner {
        uint balance = address(this).balance;
        (bool success, ) = owner.call{value: balance}("");
        require(success, "Withdrawal failed");
    }

    receive() external payable {}
}
