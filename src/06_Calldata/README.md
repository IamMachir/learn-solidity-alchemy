# Unit 6 — Calldata

Reference types (arrays, strings, structs) must specify a data location.

| Location | Persists? | Modifiable? | Cost |
|----------|-----------|-------------|------|
| `storage` | ✅ forever | ✅ | expensive |
| `memory` | ❌ temp | ✅ | medium |
| `calldata` | ❌ temp | ❌ read-only | cheapest |

Use `calldata` for function parameters when you don't need to modify them — it's the most gas-efficient option.
