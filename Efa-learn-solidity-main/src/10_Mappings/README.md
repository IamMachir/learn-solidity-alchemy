# 10 - Mappings

Mappings are the most common way to store key-value data in Solidity. They behave like hash tables but with unique blockchain-specific characteristics.

## Deep Explanations

### Mapping Mechanics
`mapping(KeyType => ValueType) public myMapping;`
- **Keys**: Can be any built-in type (address, uint, bytes, string).
- **Values**: Can be any type, including other mappings or arrays.

### Key Characteristics
1. **No Iteration**: You cannot iterate over a mapping. To do so, you must maintain a separate array of keys.
2. **Default Values**: Every possible key exists and is initialized to its "zero" value (e.g., `0` for `uint`, `false` for `bool`).
3. **No Length**: Mappings do not have a `length` property.
4. **Storage Only**: Mappings can only be declared as state variables (storage). They cannot be created in memory.

### Nested Mappings
`mapping(address => mapping(uint => bool)) public userVotes;`
Commonly used for multi-dimensional data, such as tracking if a user has voted on a specific proposal.
