// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    mapping(address => bool) public voted;
    uint public voteCount;

    function vote() public {
        require(!voted[msg.sender], "Already voted");
        voted[msg.sender] = true;
        voteCount++;
    }
}
