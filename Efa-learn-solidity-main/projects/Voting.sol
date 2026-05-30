// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Proposal {
        string name;
        uint voteCount;
    }

    address public chairperson;
    mapping(address => bool) public voters;
    Proposal[] public proposals;

    constructor(string[] memory proposalNames) {
        chairperson = msg.sender;
        for (uint i = 0; i < proposalNames.length; i++) {
            proposals.push(Proposal({
                name: proposalNames[i],
                voteCount: 0
            }));
        }
    }

    function vote(uint proposalIndex) external {
        require(!voters[msg.sender], "Already voted");
        require(proposalIndex < proposals.length, "Invalid proposal");

        voters[msg.sender] = true;
        proposals[proposalIndex].voteCount++;
    }

    function getWinningProposal() external view returns (string memory winningName) {
        uint winningVoteCount = 0;
        for (uint i = 0; i < proposals.length; i++) {
            if (proposals[i].voteCount > winningVoteCount) {
                winningVoteCount = proposals[i].voteCount;
                winningName = proposals[i].name;
            }
        }
    }
}
