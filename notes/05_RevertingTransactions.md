# Notes — Reverting Transactions

- Reverting undoes ALL state changes in the current transaction
- `require(condition, "message")` — classic validation, refunds remaining gas
- `revert CustomError()` — 0.8+ syntax, more gas-efficient than string messages
- `assert(condition)` — for bugs that should never happen; consumes ALL gas
- Custom errors can carry parameters: `error TooLow(uint provided, uint min)`
- Unused gas is always refunded on revert (except assert)
