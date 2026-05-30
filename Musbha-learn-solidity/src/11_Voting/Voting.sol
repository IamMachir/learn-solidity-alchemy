// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Proposal {
        string name;
        uint voteCount;
    }

    Proposal[] public proposals;
    mapping(address => bool) public voters;

    function addProposal(string memory _name) public {
        proposals.push(Proposal(_name, 0));
    }

    function vote(uint _proposalIndex) public {
        require(!voters[msg.sender], "Already voted");
        proposals[_proposalIndex].voteCount += 1;
        voters[msg.sender] = true;
    }
}
