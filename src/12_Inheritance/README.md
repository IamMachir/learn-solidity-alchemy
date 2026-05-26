# Unit 12 — Inheritance

Solidity contracts can inherit from other contracts using the `is` keyword.

```solidity
contract Child is Parent { }
```

## Key Points
| Keyword | Meaning |
|---------|---------|
| `is` | Inherit from parent |
| `virtual` | Function can be overridden |
| `override` | This function overrides a parent's |
| `super` | Call the parent's version |
| `modifier` | Reusable function guard |

## Visibility in Inheritance
- `private` — NOT inherited
- `internal` — inherited ✅
- `public` — inherited ✅
- `external` — NOT callable internally

Reference: [10-inheritance/presentation.md](../presentations/10-inheritance.md)
