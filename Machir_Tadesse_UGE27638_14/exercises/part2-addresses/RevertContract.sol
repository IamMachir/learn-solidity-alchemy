// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;

    constructor() payable {
        require(msg.value >= 1 ether, "Minimum 1 ether required");
        owner = msg.sender;
    }

    function withdraw() public {
        require(msg.sender == owner, "Not the owner");
        payable(msg.sender).transfer(address(this).balance);
    }
}
