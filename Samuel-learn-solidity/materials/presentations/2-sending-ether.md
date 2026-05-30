# Sending Ether Presentation

## Slide 1: How Contracts Receive Ether
- **Payable Functions**: Any function marked `payable` can receive Ether.
- **receive()**: Handles plain Ether transfers (no data).
- **fallback()**: Handles calls with data that don't match any function, or transfers if `receive` isn't defined.

## Slide 2: Sending Ether Methods
- **transfer()**: 2,300 gas limit, reverts on failure.
- **send()**: 2,300 gas limit, returns bool.
- **call()**: Forwards all gas, returns bool and data. **The modern standard.**

## Slide 3: Why `call` is Preferred
- Fixed gas limits (like 2,300) can break contracts if gas prices for opcodes change in future hard forks.
- `call` allows for more complex interactions with other contracts.

## Slide 4: Security (Reentrancy)
- Always follow the **Checks-Effects-Interactions** pattern.
- Update state variables *before* sending Ether to prevent reentrancy attacks.
