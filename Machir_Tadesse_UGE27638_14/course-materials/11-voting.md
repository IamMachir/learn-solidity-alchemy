# Voting Contract

A decentralised voting system where members create proposals and vote on them. When a proposal reaches 10 yes votes, it executes automatically.

## Core Concepts

- `Proposal` struct holds target address, calldata, yes/no counts, and executed flag
- `members` mapping controls who can vote and create proposals
- Nested mapping `hasVoted[proposalId][address]` prevents double-counting
- `voteChoice` tracks each member's current vote so they can change it
- Events (`ProposalCreated`, `VoteCast`) allow front-ends to listen for activity

## Execution

When a proposal reaches threshold, the contract calls `proposal.target.call(proposal.data)`. This can execute any function on any contract — the foundation of on-chain governance.

## Sybil Resistance

A Sybil attack is when one person creates many addresses to gain multiple votes. This contract handles it by maintaining a whitelist of members set at deployment.

## Connection to Real-World Governance

This pattern is the basis of Governor contracts used by protocols like Compound and Uniswap. The main difference is that real governance uses token-weighted voting rather than a simple member list.
