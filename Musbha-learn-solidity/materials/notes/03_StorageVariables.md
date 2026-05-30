# Storage Variables and Data Locations

Understanding where data is stored is crucial for writing efficient and secure smart contracts in Solidity.

## 1. Data Locations
Solidity has three main data locations:
- **`storage`**: 
  - Data is stored permanently on the blockchain.
  - State variables (variables defined outside functions) are always `storage`.
  - Highly gas-expensive to write and read.
- **`memory`**: 
  - Temporary data that exists only during function execution.
  - Reset between external calls.
  - Much cheaper than `storage`.
- **`calldata`**: 
  - Special data location that contains function arguments.
  - Non-modifiable and only available for external function arguments.
  - Most gas-efficient for large data types (like arrays/strings) passed as arguments.

## 2. Storage Layout
- Storage is organized into **slots** of 32 bytes each.
- Variables are laid out in the order they are declared.
- **Variable Packing**: Multiple small variables (e.g., `uint8`, `bool`) will be packed into a single 32-byte slot if they fit, saving significant gas.

## 3. Global Variables
Solidity provides built-in variables that give information about the blockchain:
- **`msg.sender`**: Address of the account/contract that called the function.
- **`msg.value`**: Amount of Ether (in Wei) sent with the call.
- **`block.timestamp`**: Current block timestamp (Unix time).
- **`block.number`**: Current block number.
- **`tx.origin`**: The original sender of the transaction (use with caution, as it can be vulnerable to phishing attacks).

## 4. Constants and Immutables
To save gas, use these for values that don't change:
- **`constant`**: Value must be assigned at declaration and can never change. It is replaced by the compiler at compile-time.
- **`immutable`**: Value can be assigned once in the constructor and then never change. More flexible than `constant` but still very gas-efficient.

## 5. Gas Considerations
- **Read/Write Storage**: Writing to storage (`SSTORE`) is one of the most expensive operations in EVM. Minimize storage updates whenever possible.
- **Reading from Storage**: Use local `memory` variables to cache storage values if they are used multiple times in a function.
