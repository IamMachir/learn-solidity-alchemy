# Notes: Reverting Transactions

Error handling in Solidity is atomic: a revert undoes all changes made during the transaction.

## 1. Error Primitives
- **`require(bool, string)`**: Used for input validation and external call results. Best for "expected" errors.
- **`revert(string)`**: Used for complex logic where a simple boolean check isn't enough.
- **`assert(bool)`**: Used for internal invariants and consistency checks. Indicates a bug if it fails.

## 2. Gas Efficiency: Custom Errors
Since Solidity 0.8.4, you should use `error MyError(args);` instead of error strings.
- **Gas Savings**: Strings are stored on-chain; custom errors use 4-byte selectors, saving significant gas.
- **Usage**: `if (condition) revert MyError(arg);`.

## 3. Atomic State
When a transaction reverts:
- All state variables return to their values before the transaction.
- All Ether transfers are cancelled.
- The caller still pays gas for the execution up to the point of failure.
