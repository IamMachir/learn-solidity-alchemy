# Mappings

Mappings store key-value pairs. Lookup is O(1) — much faster than iterating an array.

## Basic Mapping

```solidity
mapping(address => uint) public balances;

balances[msg.sender] = 100;
uint b = balances[someAddress]; // returns 0 if never set
```

Unset keys return the zero-value of the type — mappings never throw for missing keys.

## Mapping to a Struct

```solidity
struct User { uint balance; bool isActive; }
mapping(address => User) public users;

users[msg.sender] = User({ balance: 100, isActive: true });
```

## Nested Mappings

```solidity
mapping(address => mapping(address => bool)) public approved;

approved[owner][spender] = true;
```

## When to Use Mapping vs Array

Use a **mapping** when you need fast lookup by a known key.
Use an **array** when you need to iterate over all elements.

You cannot iterate a mapping directly — if you need both, combine a mapping with an array of keys.

## Storage Internals

The value for a mapping key is stored at `keccak256(key + slotNumber)`. This is why unset keys return zero — the hash points to an empty slot.
