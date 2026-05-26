# Unit 9 — Structs

Structs group related variables under one name.

```solidity
struct User {
    bool  isActive;
    uint  balance;
    address wallet;
}
```

## Key Points
- Can be stored in storage, memory, or calldata
- Can be nested inside other structs, arrays, and mappings
- Access fields with dot notation: `user.balance`
- Commonly used to represent real-world entities (User, Product, Proposal)

Reference: [7-structs/presentation.md](../presentations/7-structs.md)
