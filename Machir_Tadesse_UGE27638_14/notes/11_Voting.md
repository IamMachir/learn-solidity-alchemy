# Notes — Voting Project

- Combines structs, mappings, arrays, events, and external calls
- Proposals contain calldata — can execute any function on any contract
- Track `hasVoted[proposalId][address]` to prevent double voting
- Use `storage` reference for Proposal to update yesCount directly
- Execute proposal using low-level `.call(data)` against target address
- Quorum = minimum yes votes needed before execution
- This pattern is the foundation of DAO (Decentralised Autonomous Organisation) governance
