# Notes — Mappings

- `mapping(KeyType => ValueType)` — on-chain hash map
- Unset keys return zero-value (0, false, address(0)) — never throws
- Cannot iterate a mapping — no `.length`, no list of keys
- Pair with an array to track keys if iteration is needed
- Nested: `mapping(address => mapping(address => uint))` — like a 2D table
- Common use cases: balances, ownership, approvals, voted
