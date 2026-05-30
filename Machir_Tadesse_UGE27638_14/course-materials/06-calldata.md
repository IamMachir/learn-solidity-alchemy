# Calldata and Calling Contracts

## Interfaces

```solidity
interface IHero {
    function alert() external;
}

IHero(heroAddress).alert();
```

Interfaces define the functions available on a contract without needing the full source code.

## abi.encodeWithSignature

```solidity
bytes memory payload = abi.encodeWithSignature("alert(uint256,bool)", 5, true);
(bool success, ) = hero.call(payload);
require(success);
```

Rules for the signature string:
- Only the function name and parameter types — no variable names, no spaces
- Use `uint256` not `uint` (aliases won't work)

## Data Locations

| Location | Persists | Modifiable | Cost |
|----------|----------|------------|------|
| `storage` | Yes | Yes | High |
| `memory` | No | Yes | Medium |
| `calldata` | No | No (read-only) | Low |

Use `calldata` for external function parameters when you don't need to modify them.

## Fallback

If calldata doesn't match any function signature, the `fallback()` function is triggered.
