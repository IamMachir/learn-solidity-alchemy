# Presentation: Sending Ether

Mastering the transfer of value on the blockchain.

## Key Concepts
- **Wei vs Ether**: Understanding the denominations of currency (1 Ether = 10^18 Wei).
- **The Three Methods**: `transfer`, `send`, and `call`.
- **Gas Stipends**: The 2300 gas limit and why it's a double-edged sword.

## Architectural Insights
1. **The Reentrancy Risk**: Why `call` is powerful but dangerous. Always use the Checks-Effects-Interactions pattern.
2. **Pull vs Push Payments**: Instead of pushing funds to users, allow them to withdraw their own funds to prevent one failing transfer from bricking your whole contract.
3. **Handling Failures**: Always check the return value of `call` and `send` to ensure the Ether actually moved.
