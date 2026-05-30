# Case Study: Voting Smart Contract

A Voting contract demonstrates how to use mappings, structs, and access control to build a decentralized application (dApp).

## 1. Requirements
- **Transparency**: Anyone should be able to see the proposals and the vote count.
- **Fairness**: Each address should only be allowed to vote once.
- **Integrity**: Only authorized proposals should be voted on.

## 2. Data Structure Design
- **`Proposal` Struct**: Stores the name of the proposal and the number of votes it has received.
- **`proposals` Array**: A dynamic array to hold all `Proposal` structs.
- **`voters` Mapping**: A mapping of `address => bool` to keep track of who has already voted.

## 3. Key Functions

### `addProposal(string name)`
- Adds a new proposal to the array.
- Usually restricted to the contract owner (Access Control).

### `vote(uint proposalIndex)`
- **Validation**:
  1. Check if the sender has already voted: `require(!voters[msg.sender], "Already voted")`.
  2. Check if the `proposalIndex` is valid: `require(proposalIndex < proposals.length, "Invalid index")`.
- **Action**:
  1. Increment the `voteCount` of the selected proposal.
  2. Mark the sender as having voted: `voters[msg.sender] = true`.

### `getWinner()`
- A `view` function that iterates through the `proposals` array and returns the one with the highest `voteCount`.

## 4. Challenges & Improvements
- **Gas Limit**: If there are thousands of proposals, `getWinner()` might run out of gas. A better design might track the current winner in a state variable whenever a vote is cast.
- **Delegation**: Advanced voting contracts (like Compound's Bravo) allow users to delegate their voting power to another address.
- **Weighted Voting**: Votes could be weighted based on the amount of a specific token the user holds (Governance Token).

## 5. Security Note
- **Sybil Attacks**: In a simple voting contract, one person can create many Ethereum addresses to vote multiple times. Real-world dApps use token-based voting or identity solutions to prevent this.
