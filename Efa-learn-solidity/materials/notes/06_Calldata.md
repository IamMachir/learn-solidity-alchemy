# Notes: Calldata

Understanding the ABI and how data is passed into functions.

## 1. What is Calldata?
- It is a read-only, non-persistent area where function arguments are stored.
- It is cheaper to use than `memory` because it doesn't require allocating space and copying data.

## 2. ABI Encoding
- **Function Selector**: The first 4 bytes of calldata are the hash of the function signature (e.g., `keccak256("transfer(address,uint256)")`).
- **Arguments**: The rest of the calldata contains the encoded arguments, padded to 32 bytes.

## 3. Data Location Rules
- Use `calldata` for external function parameters that are complex types (arrays, strings, structs).
- You cannot modify variables stored in `calldata`.

## 4. `msg.data`
- This global variable contains the entire calldata of the current call.
- Useful for proxy contracts and advanced low-level interactions.
