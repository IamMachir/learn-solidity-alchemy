# Presentation: Inheritance in Solidity

## 1. Code Reusability
Inheritance allows you to create new contracts based on existing ones, inheriting their variables and functions.

## 2. Basic Syntax
```solidity
contract Child is Parent { ... }
```

## 3. Function Overriding
- **`virtual`**: A function in the parent that *can* be overridden.
- **`override`**: A function in the child that *is* overriding a parent function.

## 4. Multiple Inheritance
- Solidity supports inheriting from multiple parents.
- Order matters: `is Base, Middle, Derived`.
- Follows the "C3 Linearization" rule.

## 5. Abstract Contracts
- Contracts that cannot be deployed on their own.
- Must have at least one function without implementation.
- Used as templates for other contracts.

## 6. Interfaces
- Define a standard API (all functions must be `external`).
- No state variables, no constructors, no implementation.
- Crucial for cross-contract communication (e.g., ERC20).

## 7. Modifiers
- Reusable code snippets to change function behavior.
- Common use: `onlyOwner` access control.
- Inherited by child contracts.
