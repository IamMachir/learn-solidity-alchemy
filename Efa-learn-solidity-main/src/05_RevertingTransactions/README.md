# 05 - Reverting Transactions

Error handling is critical for smart contract security. Reverting a transaction undoes all state changes and returns remaining gas (in most cases).

## Deep Explanations

### Error Handling Primitives

1. **`require(condition, "error message")`**:
   - Used for validating inputs, return values from external calls, or state conditions.
   - Refunds remaining gas to the user.
   - Most commonly used for "user errors".

2. **`revert("error message")`**:
   - Similar to `require`, but used for complex logic where a simple condition isn't enough.
   - Also used with custom errors (Solidity 0.8.4+) for gas efficiency.

3. **`assert(condition)`**:
   - Used for internal errors and invariants (things that should *never* be false).
   - In older versions, it consumed all remaining gas; in modern versions, it behaves like `require` but with a different error code.

### Custom Errors
Modern Solidity supports `error MyError(address caller, uint amount);`. Using custom errors is significantly cheaper than string messages because it avoids the overhead of storing and processing long error strings.
