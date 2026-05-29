# 06 - Calldata

Calldata is a special data location that contains the data sent with a transaction. Understanding it is essential for advanced contract interaction and gas optimization.

## Deep Explanations

### Data Locations
Solidity has three main data locations for complex types:
1. **`storage`**: Persistent on-chain data.
2. **`memory`**: Temporary, mutable data during function execution.
3. **`calldata`**: Temporary, **immutable** data containing function arguments.

### Calldata vs Memory
- **Efficiency**: `calldata` is cheaper than `memory` because it avoids copying the data from the transaction to memory.
- **Usage**: Always use `calldata` for external function parameters if you don't need to modify them.
- **External Calls**: When calling another contract, the arguments are passed via calldata.

### ABI Encoding
The data in calldata is encoded according to the Application Binary Interface (ABI) specification. It starts with a 4-byte function selector, followed by the encoded arguments.
