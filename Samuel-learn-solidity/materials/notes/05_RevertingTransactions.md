# 05 Reverting Transactions - Deep Dive

Error handling in Solidity is done by reverting the entire transaction, undoing all state changes.

## 1. `require()`
- Used for validating inputs, checking return values from external calls, or verifying conditions before execution.
- If it fails, it reverts the transaction and refunds the remaining gas.
- Can include a custom error message: `require(balance >= amount, "Insufficient balance");`.

## 2. `revert()`
- Similar to `require`, but used for more complex conditional logic.
- Often used inside `if` statements.
- `if (condition) { revert CustomError(arg1); }` (Using custom errors is more gas-efficient than string messages).

## 3. `assert()`
- Used for checking invariants—conditions that should *never* be false if the code is correct.
- If it fails, it usually indicates a serious bug in the contract.
- In older versions, it consumed all remaining gas; now it behaves similarly to `require` but with a different opcode.

## 4. Custom Errors (Solidity 0.8.4+)
- Defined using the `error` keyword.
- Much cheaper than error strings because they don't store long messages on-chain.
```solidity
error InsufficientBalance(uint available, uint required);
```
