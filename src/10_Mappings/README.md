# Unit 10 — Mappings

Mappings are key-value stores — like a hash map or dictionary.

```solidity
mapping(KeyType => ValueType) public myMap;
```

## Key Points
- Default value for any unset key is the zero-value of the type
- Cannot iterate over a mapping (no length, no list of keys)
- Can be nested: `mapping(address => mapping(uint => bool))`
- Commonly used to track balances, ownership, and permissions
