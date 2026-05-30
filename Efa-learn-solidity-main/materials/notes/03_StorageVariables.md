# Notes: Storage Variables

State variables are persistent data stored in the contract's storage slots.

## 1. Storage Layout
- The EVM uses 32-byte slots.
- Variables are stored in the order they are declared.
- **Slot Packing**: Multiple small variables (like `uint8`) will be packed into the same 32-byte slot if they fit. This is a major gas optimization technique.

## 2. Costs
- **SSTORE**: Writing to storage is the most expensive operation (up to 20,000 gas).
- **SLOAD**: Reading from storage is also expensive (up to 2,100 gas).
- **Optimization**: Always cache storage variables in local memory if they are used multiple times in a function.

## 3. Storage vs Memory vs Calldata
- **Storage**: Permanent, expensive.
- **Memory**: Temporary, mutable, cheaper.
- **Calldata**: Temporary, immutable, cheapest (used for function arguments).

## 4. Default Values
- All state variables have a default "zero" value (e.g., `uint` is 0, `bool` is false, `address` is `0x0`).
