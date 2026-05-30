# 06 Calldata - Deep Dive

`calldata` is a special data location that is often misunderstood.

## 1. What is Calldata?
- It is a read-only, non-persistent area where function arguments are stored.
- It is available for parameters of `external` functions.

## 2. Calldata vs Memory
- **Immutability**: `calldata` is read-only; you cannot modify it. `memory` is mutable.
- **Efficiency**: Passing data as `calldata` is significantly cheaper than `memory` because the EVM doesn't need to copy the data into memory. It just reads it directly from the transaction data.
- **Usage**: Always use `calldata` for large arrays or structs in `external` functions if you don't need to modify them.

## 3. Example
```solidity
function processLargeArray(uint[] calldata _data) external pure {
    // _data[0] = 10; // This would cause a compiler error
    uint first = _data[0]; // This is fine and efficient
}
```

## 4. Function Selectors
The first 4 bytes of `calldata` represent the "Function Selector", which tells the contract which function to execute.
