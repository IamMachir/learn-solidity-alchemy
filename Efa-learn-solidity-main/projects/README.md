# Projects Deep Dive

This directory contains the flagship projects of the course, demonstrating end-to-end smart contract development.

## Escrow.sol
A multi-party transaction handler.
- **Role-Based Logic**: Strictly separates the roles of Depositor, Beneficiary, and Arbiter.
- **Fund Safety**: Funds are locked in the contract until the Arbiter calls `approve()`.
- **Event-Driven**: Emits an `Approved` event to notify off-chain systems when funds are released.
- **Security**: Implements `require` checks to ensure only the authorized Arbiter can release funds.

## Voting.sol
A decentralized governance system.
- **Complex State**: Uses an array of `Proposal` structs to manage multiple voting options.
- **Access Control**: Features a `chairperson` who initializes the contract with proposals.
- **Integrity**: Employs a `mapping(address => bool)` to prevent double-voting.
- **View Logic**: Includes a `getWinningProposal()` function to calculate results on-the-fly without changing the state.
