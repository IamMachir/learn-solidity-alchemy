# 11 - Voting

Voting is a fundamental use case for smart contracts, enabling decentralized governance and trustless decision-making.

## Deep Explanations

### Core Logic
A voting contract typically manages:
- **Proposals**: What is being voted on.
- **Voters**: Who is eligible to vote.
- **Weights**: How much power each vote has (e.g., 1 address = 1 vote, or token-weighted).

### Common Features
1. **Chairperson**: A specific address with administrative powers (e.g., adding proposals or authorizing voters).
2. **Double-Voting Protection**: Using a mapping (`mapping(address => bool)`) to ensure each address can only vote once.
3. **Transparency**: All votes and results are public and verifiable on the blockchain.

### Challenges
- **Privacy**: On-chain voting is public. For private voting, advanced techniques like Zero-Knowledge Proofs (ZKP) are required.
- **Gas Costs**: Large-scale voting can be expensive. Optimizing how proposals and votes are stored is crucial.
