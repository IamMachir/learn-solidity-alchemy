# 10 Mappings - Deep Dive

Mappings are key-value pairs and are the most commonly used data structure for storage in Solidity.

## 1. Syntax
`mapping(KeyType => ValueType) public myMapping;`
- **KeyType**: Can be any built-in type (address, uint, string, bytes), but not another mapping or array.
- **ValueType**: Can be any type, including another mapping or an array.

## 2. How Mappings Work
- Mappings do **not** store keys. Instead, the key is hashed to find the location (storage slot) of the value.
- Because of this, mappings have no concept of "length" and cannot be iterated over.
- Every possible key is initialized to its default "zero" value by default.

## 3. Mappings vs Arrays
- **Arrays**: Good when you need to iterate or keep track of order.
- **Mappings**: Good for direct lookups (e.g., `balances[address]`). They are much more gas-efficient for large datasets because you don't have to loop to find a value.

## 4. Nested Mappings
Mappings can be nested to create complex relationships, such as an allowance system:
`mapping(address => mapping(address => uint)) public allowance;`
(Owner => Spender => Amount)
