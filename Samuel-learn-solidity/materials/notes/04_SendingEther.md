# 04 Sending Ether - Deep Dive

Handling Ether transfers is a core part of many smart contracts.

## 1. Making a Contract "Payable"
- To receive Ether, a function must have the `payable` modifier.
- To receive Ether directly (without a function call), a contract must implement a `receive()` or `fallback()` function.

## 2. Sending Ether Methods
There are three main ways to send Ether from a contract:

### a. `transfer()` (Not Recommended)
- Forwards 2,300 gas.
- Reverts on failure.
- *Cons*: Fixed gas limit can break contracts if gas costs change.

### b. `send()` (Not Recommended)
- Forwards 2,300 gas.
- Returns `false` on failure (doesn't revert).
- *Cons*: Fixed gas limit and requires manual error handling.

### c. `call()` (Recommended)
- Forwards all remaining gas (or a specified amount).
- Returns `(bool success, bytes memory data)`.
- *Pros*: Flexible and handles complex receiver logic.
- *Security*: Always check the return value and protect against reentrancy.

## 3. `msg.value` and `address(this).balance`
- **`msg.value`**: The amount of Wei sent with the current message.
- **`address(this).balance`**: The total amount of Wei currently held by the contract.
