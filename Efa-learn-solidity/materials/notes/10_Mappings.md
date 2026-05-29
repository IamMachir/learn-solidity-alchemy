# Notes: Mappings

Efficient key-value stores in Solidity.

## 1. Syntax
`mapping(KeyType => ValueType) public myMapping;`
- **KeyType**: Can be any built-in type (address, uint, string, bytes).
- **ValueType**: Can be any type, including other mappings or arrays.

## 2. How it Works
- Mappings are essentially hash tables.
- **No Iteration**: You cannot loop through a mapping or get its size. To track keys, you must store them in a separate array.
- **Virtual**: All possible keys "exist" and point to the default value (zero).

## 3. Storage Only
- Mappings can only be stored in `storage`. They cannot be created in `memory` or `calldata`.
- They are the most gas-efficient way to store and retrieve data when the key is known.

## 4. Nested Mappings
Useful for multi-layered permissions or tracking data across multiple dimensions:
`mapping(address => mapping(uint => bool)) public hasVoted;`
This allows you to check `hasVoted[user][proposalId]`.
