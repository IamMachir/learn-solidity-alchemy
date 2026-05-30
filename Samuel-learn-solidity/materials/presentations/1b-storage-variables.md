# Storage Variables Presentation

## Slide 1: Introduction to State Variables
- State variables are variables whose values are permanently stored in contract storage.
- They are the "long-term memory" of your smart contract.
- Declared outside of any function.

## Slide 2: Memory vs Storage
- **Storage**: Persistent, expensive (gas), stored on the blockchain.
- **Memory**: Temporary, cheap, exists only during function execution.
- **Calldata**: Like memory but immutable and even cheaper.

## Slide 3: Gas Implications
- Writing to storage (`SSTORE`) is one of the most expensive operations in the EVM.
- Reading from storage (`SLOAD`) also costs gas, especially for the first read.
- **Optimization Tip**: Use `memory` for temporary calculations and update `storage` only once at the end.

## Slide 4: Variable Packing
- Solidity packs multiple variables into a single 32-byte storage slot if they fit.
- Example: Two `uint128` variables will share one slot.
- Order your variables carefully to save gas!
