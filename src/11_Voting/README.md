# Unit 11 — Voting Project

A decentralised voting contract where members propose and vote on actions.

## How It Works
1. Any member creates a proposal (with calldata targeting a contract)
2. Members vote yes or no
3. When yes votes exceed the threshold, the proposal executes automatically
4. Execution fires the calldata at the target contract

## Key Concepts Used
- Structs (Proposal)
- Mappings (vote tracking)
- Arrays (proposal list)
- Events
- External calls with calldata

Reference: [9-voting/presentation.md](../presentations/9-voting.md)
