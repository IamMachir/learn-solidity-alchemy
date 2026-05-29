# Notes: Voting

Implementing decentralized governance systems.

## 1. The Goal
To allow a community to make decisions (e.g., funding a project, changing a parameter) without a central authority.

## 2. Core Concepts
- **Proposal**: The item being voted on. Usually stored in a struct.
- **Vote Casting**: Users call a function to increment a counter for a proposal.
- **Eligibility**: Ensuring only authorized addresses can vote (using mappings).

## 3. Implementation Challenges
- **Sybil Attacks**: One person creating 1,000 addresses to vote 1,000 times.
  - *Solution*: Use token-weighted voting or a "whitelist" of authorized voters.
- **Voter Privacy**: All votes are public on-chain.
  - *Solution*: Use Commit-Reveal schemes or Zero-Knowledge Proofs.

## 4. Advanced Patterns
- **Delegation**: Allowing a user to delegate their voting power to another trusted address.
- **Quorum**: Requiring a minimum percentage of total voters to participate for the result to be valid.
