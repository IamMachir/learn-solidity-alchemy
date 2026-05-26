# Unit 5 — Reverting Transactions

Three ways to stop and undo a transaction in Solidity.

| Keyword | Use case | Gas refunded? |
|---------|----------|---------------|
| `require(cond, msg)` | Validate inputs/state | Yes (remaining) |
| `revert CustomError()` | Custom errors, cheaper | Yes (remaining) |
| `assert(cond)` | Catch impossible states (bugs) | No |

Custom errors (Solidity 0.8+) are more gas-efficient than string messages.
