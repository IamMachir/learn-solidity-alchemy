# Presentation: Inheritance

Designing modular and extensible smart contract systems.

## Key Concepts
- **DRY Principle**: "Don't Repeat Yourself" - using base contracts for common logic.
- **Polymorphism**: How a single interface can interact with many different contract implementations.
- **Access Control**: Using inheritance to enforce rules (e.g., `Ownable`).

## Architectural Insights
1. **The Diamond Problem**: How Solidity's C3 Linearization handles multiple inheritance and prevents ambiguity.
2. **Interfaces as Contracts**: Why defining interfaces is better for composability than inheriting entire codebases.
3. **Upgradability**: How inheritance plays a role in proxy patterns and keeping contracts future-proof.
