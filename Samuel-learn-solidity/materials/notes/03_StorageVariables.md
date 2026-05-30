# 03 Storage Variables - Deep Dive

Understanding where data is stored is crucial for gas optimization in Solidity.

## 1. Storage vs Memory vs Calldata
- **Storage**: Where state variables reside. Persistent across transactions and stored on the blockchain. Extremely expensive to write to.
- **Memory**: Temporary storage used during function execution. Cleared after the function ends. Cheaper than storage.
- **Calldata**: Non-modifiable, non-persistent area where function arguments are stored. The cheapest location for input data.

## 2. State Variables
Variables defined at the contract level (outside functions) are state variables.
- They are stored in "slots" of 32 bytes each.
- **Packing**: Solidity tries to pack multiple variables into a single 32-byte slot if they fit (e.g., two `uint128` variables). This can save gas.

## 3. Gas Costs
- **SSTORE**: The opcode for writing to storage. Costs 20,000 gas to set a zero value to non-zero, and 5,000 gas to modify an existing value.
- **SLOAD**: The opcode for reading from storage. Costs 2,100 gas for "cold" storage access.

## 4. Best Practices
- Minimize writes to state variables.
- Use `memory` for intermediate calculations.
- Use `uint256` unless you specifically need packing, as the EVM operates on 32-byte words.
