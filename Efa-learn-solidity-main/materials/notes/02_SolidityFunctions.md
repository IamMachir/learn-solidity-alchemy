# Notes: Solidity Functions

Functions define how users and other contracts interact with your state.

## 1. Function Syntax
```solidity
function name(uint arg1) visibility stateMutability returns (type) { ... }
```

## 2. Visibility Modifiers
- **`public`**: Accessible from anywhere (inside and outside).
- **`private`**: Only accessible within the current contract.
- **`internal`**: Accessible within the contract and derived contracts.
- **`external`**: Only accessible from outside the contract. More gas-efficient for large inputs.

## 3. State Mutability
- **`pure`**: Does not read or modify state (e.g., math helper).
- **`view`**: Reads state but does not modify it (e.g., getter).
- **Default**: Can read and modify state (e.g., state-changing transactions).

## 4. Return Values
- Functions can return multiple values: `returns (uint, bool)`.
- Named return values allow you to omit the `return` keyword: `returns (uint x) { x = 10; }`.

## 5. Function Overloading
Multiple functions can share the same name if their parameter lists are different.
