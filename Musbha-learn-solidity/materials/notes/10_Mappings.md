# Mappings in Solidity: Key-Value Storage

Mappings are one of the most important and frequently used data structures in Solidity. They act like hash tables or dictionaries.

## 1. Syntax and Definition
```solidity
mapping(KeyType => ValueType) public myMapping;
```
- **KeyType**: Can be any built-in type (uint, address, bytes32, etc.) but **cannot** be a mapping, struct, or array.
- **ValueType**: Can be any type, including other mappings, arrays, or structs.

## 2. Key Characteristics
- **No Iteration**: You cannot iterate over a mapping directly. There is no concept of "length" or "keys" in a mapping.
- **Default Values**: Every possible key is initialized to its default value (e.g., `0` for `uint`, `false` for `bool`).
- **Storage Only**: Mappings can only exist in `storage` (not in `memory` or `calldata`).

## 3. Nested Mappings
Mappings can be nested to represent more complex relationships:
```solidity
// Example: allowance[owner][spender] = amount
mapping(address => mapping(address => uint)) public allowance;
```

## 4. How to "Iterate" over Mappings
Since you can't iterate over mappings directly, you must use a pattern if you need to list all entries:
- Maintain a separate **array of keys**:
  ```solidity
  address[] public users;
  mapping(address => uint) public balances;

  function addUser(address _user) public {
      users.push(_user);
      balances[_user] = 0;
  }
  ```

## 5. Gas Efficiency
- Mappings are **extremely gas-efficient** for lookups and updates compared to searching through an array.
- Lookup time is O(1) regardless of the size.

## 6. Security & Privacy
- Mappings are stored as `keccak256(key . slot)`. This means you cannot see all the keys stored in a mapping by looking at the blockchain storage unless you already know the keys.
- **Public Mappings**: Solidity automatically creates a getter function for public mappings: `myMapping(key)`.
