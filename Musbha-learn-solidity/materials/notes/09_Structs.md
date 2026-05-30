# Structs in Solidity: Custom Data Structures

Structs allow you to create your own custom data types in Solidity, grouping together related variables of different types.

## 1. Defining a Struct
```solidity
struct User {
    address addr;
    string name;
    uint balance;
    bool isRegistered;
}
```

## 2. Initializing Structs
There are three main ways to initialize a struct:
- **Positional Arguments**: `User(msg.sender, "Alice", 100, true);`
- **Key-Value Mapping**: `User({addr: msg.sender, name: "Alice", balance: 100, isRegistered: true});`
- **Manual Assignment**:
  ```solidity
  User memory newUser;
  newUser.addr = msg.sender;
  newUser.name = "Alice";
  ```

## 3. Data Location for Structs
Like arrays, you must specify the data location when using structs in functions:
- **`storage`**: Creates a reference to a struct already in state storage. Modifying the reference modifies the state.
- **`memory`**: Creates a temporary copy of the struct. Modifying it does not affect the state.

## 4. Structs and Mappings/Arrays
Structs are most powerful when used inside other collections:
- **Array of Structs**: `User[] public users;`
- **Mapping of Structs**: `mapping(address => User) public userInfo;`

## 5. Gas Tip: Variable Packing in Structs
Solidity packs variables in structs into 32-byte slots. To save gas, **order your struct members** so that smaller types are next to each other:
```solidity
// Efficient (uses 2 slots)
struct Packed {
    uint128 a;
    uint128 b;
    uint256 c;
}

// Inefficient (uses 3 slots)
struct Unpacked {
    uint128 a;
    uint256 c;
    uint128 b;
}
```

## 6. Limitations
- Structs cannot contain members of their own type (infinite recursion).
- However, they **can** contain a mapping or an array of their own type.
