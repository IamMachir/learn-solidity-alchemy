# 09 - Structs

Structs allow you to define custom data types that group related variables together. They are essential for creating complex models like Users, Orders, or Proposals.

## Deep Explanations

### Defining and Using Structs
A struct is defined using the `struct` keyword and can contain any valid Solidity type, including other structs and mappings.

### Initialization
There are three ways to initialize a struct:
1. **Positional**: `Todo("Text", false)`
2. **Key-Value**: `Todo({text: "Text", completed: false})`
3. **Empty then Set**: `Todo memory t; t.text = "Text";`

### Storage vs Memory
- When you retrieve a struct from storage, using `storage` creates a reference (pointer). Modifying it updates the blockchain state.
- Using `memory` creates a copy. Modifying it only exists during the function call.

### Gas Efficiency
Grouping related data into a struct and storing it in a single mapping or array can be more gas-efficient than having multiple independent mappings, especially if the data is often accessed together.
