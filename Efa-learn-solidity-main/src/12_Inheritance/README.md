# 12 - Inheritance

Inheritance allows you to create new contracts that reuse the functionality of existing ones. It promotes code modularity and the "Don't Repeat Yourself" (DRY) principle.

## Deep Explanations

### The `is` Keyword
`contract Child is Parent { ... }`
The `Child` contract inherits all public and internal state variables and functions from the `Parent`.

### Modifying Behavior
1. **`virtual`**: A function in a parent contract that is intended to be overridden.
2. **`override`**: A function in a child contract that is overriding a `virtual` function from the parent.

### Multiple Inheritance
Solidity supports multiple inheritance: `contract C is A, B { ... }`.
- **Order Matters**: Contracts must be listed from "most base-like" to "most derived".
- **Linearization**: Solidity uses C3 Linearization to resolve function calls in multiple inheritance.

### Access Control Example
Inheritance is frequently used for access control. By inheriting from an `Ownable` contract, a derived contract can easily restrict certain functions to only the contract owner using the `onlyOwner` modifier.
