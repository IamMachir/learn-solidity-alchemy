// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Voting
 * @dev A simple smart contract for decentralized governance and voting.
 *
 * This contract demonstrates:
 * 1. Using Structs to group related data (Proposals).
 * 2. Using Mappings to track state per address (hasVoted).
 * 3. Dynamic Arrays to store collections of items.
 * 4. Complex logic to calculate winners from an array.
 */
contract Voting {
    // Structure to represent a single proposal
    struct Proposal {
        string name;      // Short name of the proposal
        uint voteCount;   // Number of accumulated votes
    }

    // List of all active proposals
    Proposal[] public proposals;

    // Tracking who has already voted to prevent double-voting
    mapping(address => bool) public hasVoted;

    // Address of the contract administrator (optional, but good for governance)
    address public owner;

    /**
     * @dev Constructor initializes the contract with a list of proposal names.
     * @param proposalNames An array of strings representing the names of the proposals.
     */
    constructor(string[] memory proposalNames) {
        owner = msg.sender;
        // Populate the proposals array during initialization
        for (uint i = 0; i < proposalNames.length; i++) {
            proposals.push(Proposal({
                name: proposalNames[i],
                voteCount: 0
            }));
        }
    }

    /**
     * @dev Casts a vote for a specific proposal.
     * Requirement: Sender must not have voted before and index must be valid.
     * @param proposalIndex The index of the proposal in the `proposals` array.
     */
    function vote(uint proposalIndex) public {
        // Sybil Resistance: Prevent an address from voting multiple times
        require(!hasVoted[msg.sender], "Already voted.");
        // Input Validation: Ensure the selected proposal exists
        require(proposalIndex < proposals.length, "Invalid proposal index.");

        // Increment the vote count for the selected proposal
        proposals[proposalIndex].voteCount += 1;
        // Mark the sender as having voted
        hasVoted[msg.sender] = true;
    }

    /**
     * @dev Calculates the winner based on the highest vote count.
     * Note: This function iterates over the entire proposals array.
     * @return winnerName The name of the proposal with the most votes.
     */
    function getWinner() public view returns (string memory winnerName) {
        uint winningVoteCount = 0;
        uint winningProposalIndex = 0;

        // Iterate through all proposals to find the one with the most votes
        for (uint i = 0; i < proposals.length; i++) {
            if (proposals[i].voteCount > winningVoteCount) {
                winningVoteCount = proposals[i].voteCount;
                winningProposalIndex = i;
            }
        }
        // Return the name of the winning proposal
        winnerName = proposals[winningProposalIndex].name;
    }
}
