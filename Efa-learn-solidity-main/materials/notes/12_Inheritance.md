# Notes: Inheritance

Promoting code reuse and modularity in Solidity.

## 1. The `is` Keyword
A contract can inherit from one or more other contracts.
`contract MyContract is Ownable, ERC20 { ... }`

## 2. Function Overriding
- **`virtual`**: A function in the parent contract that is allowed to be overridden.
- **`override`**: A function in the child contract that is overriding a parent function.

## 3. Constructors in Inheritance
Child contracts can pass arguments to parent constructors:
`constructor(string memory _name) ParentContract(_name) { ... }`

## 4. Shadowing Variables
Avoid declaring state variables with the same name as those in the parent contract. This is called shadowing and can lead to confusion and bugs.

## 5. Interfaces & Abstract Contracts
- **Abstract Contracts**: Contracts that have at least one function without an implementation. Cannot be deployed directly.
- **Interfaces**: Only contain function signatures. Used to define a standard (like ERC20) that other contracts must follow.
