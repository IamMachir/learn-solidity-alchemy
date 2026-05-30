# Inheritance and Modifiers in Solidity

Inheritance is a way to extend the functionality of a contract by "inheriting" properties and methods from another contract. This promotes code reuse and organization.

## 1. Basic Inheritance
- **Syntax**: `contract Child is Parent { ... }`
- The `Child` contract has access to all non-private members of the `Parent` contract.
- Solidity supports **multiple inheritance**: `contract Child is Parent1, Parent2 { ... }`.

## 2. Function Overriding
- **`virtual`**: A function in the parent contract that is intended to be overridden must be marked as `virtual`.
- **`override`**: A function in the child contract that overrides a parent function must be marked as `override`.
```solidity
contract Parent {
    function foo() public virtual returns (string memory) {
        return "Parent";
    }
}

contract Child is Parent {
    function foo() public override returns (string memory) {
        return "Child";
    }
}
```

## 3. Function Modifiers
Modifiers are used to change the behavior of functions in a declarative way. They are often used for access control and input validation.
- **`_` (Underscore)**: This special symbol tells Solidity to execute the rest of the function body.
- **Example**:
  ```solidity
  modifier onlyOwner() {
      require(msg.sender == owner, "Not owner");
      _; // Function body is executed here
  }

  function withdraw() public onlyOwner {
      // Logic
  }
  ```

## 4. Abstract Contracts
- If a contract has at least one function without an implementation, it must be marked as `abstract`.
- You cannot deploy an abstract contract directly.

## 5. Interfaces
Interfaces are similar to abstract contracts but have more restrictions:
- Cannot have any functions with implementation.
- Cannot inherit from other contracts/interfaces.
- Cannot define a constructor or state variables.
- All declared functions must be `external`.
- **Purpose**: They define a standard "API" for interacting with other contracts (e.g., ERC20, ERC721).

## 6. The `super` Keyword
Used to call a function from the parent contract:
```solidity
function foo() public override {
    super.foo(); // Calls Parent's foo()
    // Additional logic
}
```

## 7. Order of Inheritance
When inheriting from multiple contracts, the order matters. List them from "most base-like" to "most derived":
`contract Child is Base, Middle, Derived { ... }`
