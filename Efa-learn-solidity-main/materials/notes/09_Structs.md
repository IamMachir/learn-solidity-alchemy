# Notes: Structs

Creating custom, complex data types.

## 1. Definition
Structs allow you to group related data into a single object.
```solidity
struct User {
    address addr;
    uint balance;
    bool isActive;
}
```

## 2. Initialization
- **Positional**: `User(msg.sender, 100, true)`
- **Mapping-style**: `User({addr: msg.sender, balance: 100, isActive: true})`

## 3. Storage vs Memory
- **Storage Struct**: Use `storage` to create a reference to an existing struct on the blockchain. Modifying it updates the state.
- **Memory Struct**: Use `memory` to create a temporary copy. Modifying it does not affect the blockchain state.

## 4. Why use Structs?
- **Organization**: Keeps related data together.
- **Gas**: Passing a single struct to a function is often cleaner and sometimes cheaper than passing 10 individual arguments.
- **Slot Packing**: If you order your struct members carefully (e.g., putting multiple `uint128`s next to each other), Solidity will pack them into a single 32-byte slot.
