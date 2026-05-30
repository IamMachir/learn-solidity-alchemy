# Solidity Projects: Deep Dive

This folder contains complete, end-to-end smart contract projects that implement real-world logic using the concepts learned in the `src/` directory.

## 1. Escrow Project (`Escrow.sol`)
The Escrow contract is a decentralized financial tool used to hold funds between two parties (Depositor and Beneficiary) until a third party (Arbiter) verifies the transaction.

### **Key Technical Features:**
- **Access Control**: Uses custom logic to ensure only the `Arbiter` can release funds.
- **State Management**: Tracks addresses of all three participants.
- **Ether Handling**: Receives Ether during deployment and releases it using the recommended `call` method.
- **Events**: Emits an `Approved` event to notify off-chain systems of a successful release.

### **Learning Objectives:**
- Understanding how to manage Ether balances within a contract.
- Implementing role-based permissions.
- Learning the "Checks-Effects-Interactions" pattern for secure transfers.

---

## 2. Voting Project (`Voting.sol`)
The Voting contract provides a platform for decentralized governance, allowing users to vote on a list of predefined proposals.

### **Key Technical Features:**
- **Structs**: Defines a `Proposal` struct to group names and vote counts.
- **Mappings**: Uses a `hasVoted` mapping to ensure Sybil resistance (one address, one vote).
- **Arrays**: Stores a list of proposals that can be iterated over to find a winner.
- **Complex Logic**: Implements a `getWinner` function that finds the proposal with the highest vote count.

### **Learning Objectives:**
- Managing collections of data with arrays and structs.
- Preventing double-voting using mappings.
- Writing efficient view functions for data retrieval.

---

## **How to Use These Projects**
1. **Study the Code**: Read through the `.sol` files to understand the implementation.
2. **Deploy**: Use a tool like Remix, Hardhat, or Foundry to deploy these to a testnet.
3. **Interact**: Test the functions (e.g., try voting twice, or try approving as the depositor instead of the arbiter) to see the error handling in action.
