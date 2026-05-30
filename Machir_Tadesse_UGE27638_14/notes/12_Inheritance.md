# Notes — Inheritance

- `contract Child is Parent` — Child gets all non-private members
- `modifier onlyOwner` — reusable guard, `_;` is where the function body runs
- `virtual` marks a function as overridable by child contracts
- `override` must be used when redefining a virtual function
- `super.functionName()` calls the parent's version from the child
- OpenZeppelin's `Ownable`, `Pausable`, `ERC20` all use this pattern
- Multiple inheritance is allowed: `contract C is A, B` (linearised with C3)
