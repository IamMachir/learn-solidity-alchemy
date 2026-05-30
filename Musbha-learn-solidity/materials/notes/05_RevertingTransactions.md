# Error Handling: Reverting Transactions

In Solidity, error handling is done by reverting the state changes of the current transaction. This is a fundamental safety feature of the EVM.

## 1. The Three Error Handling Keywords

### `require()`
- **Purpose**: Used for validating inputs, conditions, or return values from external calls.
- **Gas**: Returns the remaining gas to the user.
- **Usage**: Use for errors that are expected to happen occasionally (e.g., "Insufficient balance").
- **Example**: `require(msg.value >= 1 ether, "Send at least 1 ETH");`

### `revert()`
- **Purpose**: Used for complex conditional logic where `require` is not sufficient.
- **Gas**: Returns the remaining gas.
- **Usage**: Equivalent to `require` but used inside an `if` statement.
- **Example**:
  ```solidity
  if (condition) {
      revert("Detailed error message");
  }
  ```

### `assert()`
- **Purpose**: Used to check for internal errors and invariants (conditions that should *never* be false).
- **Gas**: Before Solidity 0.8.0, it consumed all gas. Now it behaves like `require` (returns remaining gas).
- **Usage**: Use sparingly for "should never happen" cases (e.g., checking for overflow after an operation).

## 2. Custom Errors (Recommended)
Introduced in Solidity 0.8.4, custom errors are much more gas-efficient than string messages.
- **Gas Tip**: String error messages (like in `require`) take up space in the contract bytecode and cost more gas to deploy and execute.
- **Definition**: `error Unauthorized(address caller);`
- **Usage**: `if (msg.sender != owner) revert Unauthorized(msg.sender);`

## 3. The `try / catch` Statement
Allows you to handle failures in external function calls and contract creations without reverting the entire transaction.
```solidity
try externalContract.doSomething() {
    // Success logic
} catch Error(string memory reason) {
    // Standard revert/require reason
} catch (bytes memory lowLevelData) {
    // Low-level failure data
}
```

## 4. Atomicity
All transactions in Ethereum are **atomic**. If a transaction reverts:
- All state changes (e.g., balance updates, mapping changes) are rolled back.
- The Ether sent with the transaction is returned to the sender (minus gas fees).
- The transaction is still recorded on the blockchain but marked as failed.
