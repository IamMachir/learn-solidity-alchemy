# 11 Voting - Deep Dive

Building a voting system is a classic challenge that combines arrays, mappings, and access control.

## 1. Key Components
- **Proposals**: Usually stored in an array of structs.
- **Voters**: Tracked using a mapping (e.g., `mapping(address => bool) hasVoted`) to prevent double voting.
- **Tallying**: Logic to iterate through proposals or update a winner variable in real-time.

## 2. Design Patterns
- **Weighted Voting**: Giving different voters different "voting power" based on token balance or reputation.
- **Delegation**: Allowing a voter to delegate their vote to someone else.
- **Secret Ballots**: Much harder on a transparent blockchain; usually requires advanced techniques like Commit-Reveal schemes or Zero-Knowledge Proofs.

## 3. Security Risks
- **Sybil Attacks**: One person creating multiple addresses to vote multiple times. This is why many systems require "membership" or token ownership.
- **Flash Loan Attacks**: Borrowing tokens just to vote in a governance proposal and then returning them in the same transaction.
