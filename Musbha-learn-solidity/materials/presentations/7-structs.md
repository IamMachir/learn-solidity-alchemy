# Presentation: Structs in Solidity

## 1. Defining Custom Types
Structs allow you to group related variables of different types into a single custom type.

## 2. When to Use Structs
- To represent complex entities (e.g., `User`, `Product`, `Voter`).
- To keep your code organized and readable.

## 3. Initializing Structs
- **Positional**: `User(id, name, age)`
- **Key-Value**: `User({id: 1, name: "Alice", age: 25})`

## 4. Storage vs Memory
- **Storage**: Updates to the struct persist on-chain.
- **Memory**: Changes are temporary and do not affect the state.

## 5. Gas Optimization: Packing
- Order your struct members to fit into 32-byte slots.
- Group types like `uint8`, `bool`, and `address` together.
- This can significantly reduce gas costs for storage.

## 6. Arrays of Structs
- Common pattern: `User[] public users;`
- Allows you to store a list of custom entities.
