# Projects

Full smart contract projects developed during the course.

| Project | Description | File |
|---------|-------------|------|
| Escrow | 3-party escrow with ETH locking and arbiter approval | `Escrow.sol` |
| Voting | DAO-style voting with proposals, votes, and execution | `Voting.sol` |

## Escrow
A real-world contract where a depositor locks ETH and a trusted arbiter
releases it to the beneficiary. Demonstrates payable constructors, events,
role-based access control, and safe ETH transfer.

## Voting
A decentralised governance contract where members propose actions,
vote on them, and the contract auto-executes when quorum is reached.
Demonstrates structs, mappings, arrays, events, and low-level calls.
