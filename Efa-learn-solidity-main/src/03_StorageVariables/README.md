# 03 - Storage Variables

Storage variables (state variables) are the permanent data stored on the blockchain. They represent the "state" of the contract.

## Deep Explanations

### Persistence
Unlike local variables in functions, storage variables are saved in the contract's storage space. This data persists between transactions and is shared across all nodes on the network.

### Storage Layout
Solidity stores variables in 32-byte slots. 
- **Slot Packing**: If multiple variables can fit into a single 32-byte slot (e.g., two `uint128`s), Solidity will pack them together to save storage space.
- **Gas Costs**: Writing to storage (`SSTORE`) is one of the most expensive operations in the EVM. Minimizing storage writes is a primary goal of gas optimization.

### Visibility
- **`public`**: Automatically creates a getter function.
- **`private`**: Only accessible within the current contract. Note: Data is still visible on the blockchain (nothing is truly secret on a public ledger).
- **`internal`**: Like private, but also accessible by derived contracts.
