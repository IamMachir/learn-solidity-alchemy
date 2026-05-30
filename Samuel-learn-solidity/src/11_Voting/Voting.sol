// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Proposal {
        string name;
        uint256 voteCount;
    }

    Proposal[] public proposals;

    function addProposal(string memory _name) public {
        proposals.push(Proposal({name: _name, voteCount: 0}));
    }

    function vote(uint256 _proposalIndex) public {
        proposals[_proposalIndex].voteCount += 1;
    }
}
