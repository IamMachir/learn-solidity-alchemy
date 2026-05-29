# Presentation: Storage Variables

Understanding how data lives on the blockchain.

## Key Concepts
- **The EVM Storage Model**: A key-value store where keys and values are both 32 bytes.
- **Gas Costs**: Why storage is the most expensive resource on Ethereum.
- **Persistence**: Unlike traditional databases, blockchain state is immutable and globally shared.

## Architectural Insights
1. **Slot Packing**: Grouping small types together to reduce the number of `SSTORE` operations.
2. **Cold vs Warm Storage**: The first time you access a slot in a transaction, it's "cold" and expensive. Subsequent accesses are "warm" and much cheaper.
3. **Immutables and Constants**: Use `constant` for values known at compile time and `immutable` for values set in the constructor to save massive amounts of gas.
