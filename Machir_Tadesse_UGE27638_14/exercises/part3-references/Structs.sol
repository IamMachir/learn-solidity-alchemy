// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    enum Choices { Yes, No }

    struct Vote {
        Choices choice;
        address voter;
    }

    Vote public vote;
    Vote[] public votes;

    function createVote(Choices _choice) external {
        require(!hasVoted(msg.sender), "Already voted");
        Vote memory newVote = Vote({ choice: _choice, voter: msg.sender });
        vote  = newVote;
        votes.push(newVote);
    }

    function changeVote(Choices _choice) external {
        for (uint i = 0; i < votes.length; i++) {
            if (votes[i].voter == msg.sender) {
                votes[i].choice = _choice;
                return;
            }
        }
        revert("No vote found for this address");
    }

    function hasVoted(address _voter) public view returns (bool) {
        return findVote(_voter).voter == _voter;
    }

    function findChoice(address _voter) external view returns (Choices) {
        return findVote(_voter).choice;
    }

    function findVote(address _voter) internal view returns (Vote memory) {
        for (uint i = 0; i < votes.length; i++) {
            if (votes[i].voter == _voter) return votes[i];
        }
        return Vote(Choices(0), address(0));
    }
}
