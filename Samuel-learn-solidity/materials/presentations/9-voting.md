# Voting Presentation

## Slide 1: Decentralized Governance
- Voting is the foundation of DAOs (Decentralized Autonomous Organizations).
- Smart contracts make voting tamper-proof and transparent.

## Slide 2: Managing Proposals
- Use an array of structs to store proposal names and their current vote counts.
- Dynamically add proposals during initialization or through a dedicated function.

## Slide 3: Ensuring Fairness
- The "One Address, One Vote" rule.
- Implemented using a mapping: `mapping(address => bool) hasVoted`.

## Slide 4: Tallying Results
- `getWinner()` iterates through the proposals to find the highest count.
- Transparency: Anyone can verify the votes on-chain.

## Slide 5: Advanced Topics
- Token-weighted voting.
- Delegation.
- Quadratic voting.
