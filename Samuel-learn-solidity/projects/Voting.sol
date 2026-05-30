// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Proposal {
        string name;
        uint256 voteCount;
    }

    Proposal[] public proposals;
    mapping(address => bool) public hasVoted;

    constructor(string[] memory _proposalNames) {
        for (uint256 i = 0; i < _proposalNames.length; i++) {
            proposals.push(Proposal({
                name: _proposalNames[i],
                voteCount: 0
            }));
        }
    }

    function vote(uint256 _proposalIndex) public {
        require(!hasVoted[msg.sender], "Already voted.");
        require(_proposalIndex < proposals.length, "Invalid proposal.");

        proposals[_proposalIndex].voteCount += 1;
        hasVoted[msg.sender] = true;
    }

    function getWinner() public view returns (string memory winnerName) {
        uint256 winningVoteCount = 0;
        for (uint256 p = 0; p < proposals.length; p++) {
            if (proposals[p].voteCount > winningVoteCount) {
                winningVoteCount = proposals[p].voteCount;
                winnerName = proposals[p].name;
            }
        }
    }
}
