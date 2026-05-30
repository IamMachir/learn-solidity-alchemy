# 12 Inheritance - Deep Dive

Inheritance allows you to build complex contracts by combining smaller, modular ones.

## 1. Basic Inheritance
- Use the `is` keyword: `contract Child is Parent { ... }`.
- The child contract gains access to all `public` and `internal` members of the parent.

## 2. Overriding Functions
- **`virtual`**: The parent function must be marked `virtual` to allow children to override it.
- **`override`**: The child function must be marked `override` to indicate it is replacing a parent function.

## 3. Multiple Inheritance
Solidity supports inheriting from multiple contracts: `contract C is A, B { ... }`.
- **Order Matters**: Contracts should be listed from "most base-like" to "most derived".
- **Linearization**: Solidity uses C3 Linearization to resolve which function is called if multiple parents have the same function.

## 4. Constructors in Inheritance
Children can pass arguments to parent constructors:
```solidity
constructor(string memory _name) Parent(_name) { ... }
```

## 5. Abstract Contracts and Interfaces
- **Abstract**: A contract that has at least one function without implementation.
- **Interface**: Defines the function signatures but has no implementations, no state variables, and no constructors. Used to interact with other contracts.
