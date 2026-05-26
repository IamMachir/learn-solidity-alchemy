# Unit 8 — Arrays

Solidity supports both fixed-size and dynamic arrays.

| Type | Syntax | Size |
|------|--------|------|
| Fixed | `uint[3] arr` | set at compile time |
| Dynamic | `uint[] arr` | grows/shrinks at runtime |

## Key Methods (dynamic only)
- `arr.push(val)` — add to end
- `arr.pop()` — remove from end
- `arr.length` — current length
- `delete arr[i]` — zeros out index (does NOT shrink array)
