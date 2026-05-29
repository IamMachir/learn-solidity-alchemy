# 02 - Solidity Functions

Functions are the executable units of code within a smart contract. This module explores how to define, secure, and optimize them.

## Deep Explanations

### 1. Arguments
Functions can take multiple parameters. For complex types like strings or arrays, you must specify the data location (`memory` or `calldata`).

### 2. Increment Logic
State-changing functions modify the blockchain. Every such transaction requires gas.
- **Side Effects**: Functions can update state variables, emit events, and trigger other contract calls.

### 3. View vs Pure Functions
Understanding function modifiers is key to gas efficiency:
- **`view`**: Reads from the state but does not modify it. Free when called externally.
- **`pure`**: Neither reads from nor modifies the state (e.g., math calculations). Also free when called externally.

### 4. Console Logging
Using Hardhat's `console.log` for debugging. 
- **Important**: This is a development tool. Logging must be removed or commented out before deploying to a production network to save gas and avoid deployment errors.

### 5. Function Overloading
Solidity supports having multiple functions with the same name but different parameter signatures. The compiler determines which one to call based on the arguments provided.
