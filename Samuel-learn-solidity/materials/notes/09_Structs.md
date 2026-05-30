# 09 Structs - Deep Dive

Structs allow you to create custom data types that group together related variables.

## 1. Definition and Initialization
```solidity
struct User {
    address addr;
    string name;
    uint score;
}

// Initialization
User memory newUser = User(msg.sender, "Alice", 100);
// OR
User memory newUser = User({addr: msg.sender, name: "Alice", score: 100});
```

## 2. Data Location
- Structs can be stored in `storage`, `memory`, or `calldata`.
- When you pass a struct as an argument, you must specify the location: `function register(User memory _user)`.

## 3. Structs in Mappings and Arrays
Structs are commonly used as values in mappings or as elements in arrays to represent complex objects like "Players", "Votes", or "Orders".

## 4. Gas Efficiency
- Structs themselves don't add much overhead, but storing them in state variables involves multiple storage writes.
- **Slot Packing**: If you order the members of your struct carefully (e.g., putting multiple `uint8` or `bool` variables next to each other), Solidity will pack them into fewer 32-byte slots, saving significant gas.
