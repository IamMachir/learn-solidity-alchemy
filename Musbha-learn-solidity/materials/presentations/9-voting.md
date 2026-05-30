# Presentation: Voting Smart Contract

## 1. Decentralized Voting
Using smart contracts to ensure transparency and prevent tampering in elections or governance.

## 2. Key Components
- **Voters**: Addresses with permission to cast a vote.
- **Proposals**: A list of options to vote for.
- **Tally**: The current count of votes for each proposal.

## 3. Data Structures
- **Mapping**: To track who has already voted (`address => bool`).
- **Struct**: To define what a `Proposal` looks like (name, vote count).
- **Array**: To store all active proposals.

## 4. Main Functions
- `vote()`: Validates the voter and increments the count.
- `getWinner()`: Calculates and returns the proposal with most votes.

## 5. Security Concerns
- **Double Voting**: Use a mapping to ensure one vote per address.
- **Sybil Attacks**: One person using many addresses (Mitigated by KYC or token-weighted voting).
- **Gas Limits**: Iterating over too many proposals can fail (O(n) complexity).
- **Integrity**: Only authorized proposals should be included.
