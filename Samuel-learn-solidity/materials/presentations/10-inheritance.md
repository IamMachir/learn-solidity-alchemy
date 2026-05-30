# Inheritance Presentation

## Slide 1: Code Reusability
- Inheritance allows a contract to inherit properties and methods from another.
- Uses the `is` keyword.

## Slide 2: Virtual and Override
- **Virtual**: Mark a parent function as "overridable".
- **Override**: Mark a child function as "overriding" a parent one.

## Slide 3: Multiple Inheritance
- Solidity supports inheriting from multiple parents.
- Order matters: "Most base-like to most derived".

## Slide 4: Abstract Contracts
- Contracts that cannot be deployed on their own.
- Used as templates for other contracts.

## Slide 5: Interfaces
- The "contract for a contract".
- Defines function signatures but no logic.
- Essential for interacting with external protocols (like Uniswap or Aave).
