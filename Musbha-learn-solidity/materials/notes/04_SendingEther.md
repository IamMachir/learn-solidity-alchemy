# Sending Ether and Handling Transactions

There are three primary ways to send Ether from a smart contract to an address. Choosing the right one is critical for security and compatibility.

## 1. Comparison of Sending Methods

### `transfer`
- **Syntax**: `payable(to).transfer(amount)`
- **Gas**: Fixed 2300 gas limit (just enough for an event log).
- **Behavior**: Reverts automatically on failure.
- **Usage**: No longer recommended due to potential breaking changes in gas costs.

### `send`
- **Syntax**: `bool success = payable(to).send(amount)`
- **Gas**: Fixed 2300 gas limit.
- **Behavior**: Returns `false` on failure (does NOT revert).
- **Usage**: Rarely used because it requires manual check of the return value.

### `call` (Recommended)
- **Syntax**: `(bool success, bytes memory data) = payable(to).call{value: amount}("")`
- **Gas**: Forwards all remaining gas (unless specified).
- **Behavior**: Returns `success` boolean and any data returned by the recipient.
- **Usage**: **Recommended** since 2019 for sending Ether to any address.

## 2. Security: Reentrancy
When using `call` to send Ether, you must be careful about **reentrancy attacks**. 
- The recipient of Ether can be another contract with a `receive` or `fallback` function that calls back into your contract.
- **Protection**: Use the **Checks-Effects-Interactions** pattern or a `ReentrancyGuard` (mutex).

## 3. Receiving Ether
A contract can receive Ether in three ways:
1. **`receive()`**: Triggered when Ether is sent with no data.
2. **`fallback()`**: Triggered when Ether is sent with data that doesn't match any function, or when no `receive` exists.
3. **`payable` functions**: Specific functions that can accept Ether along with their arguments.

## 4. Denominator Units
Solidity uses `Wei` as the base unit (1 Ether = 10^18 Wei). You can use suffixes for clarity:
- `1 wei`
- `1 gwei` (10^9 wei)
- `1 ether` (10^18 wei)

## 5. Withdraw Pattern
Instead of "pushing" Ether to users (which can fail and block the entire contract), it is often better to use a **Withdrawal Pattern** (Pull-over-Push):
- Users call a `withdraw` function to claim their balance.
- This isolates the risk of failure to the individual user.
