# 04 - Sending Ether

Handling native currency (Ether) is a core responsibility of many smart contracts. This module covers the safe and effective ways to receive and send Ether.

## Deep Explanations

### Receiving Ether
A contract can receive Ether through:
- **`receive()`**: Triggered when the call data is empty.
- **`fallback()`**: Triggered when no other function matches the call data.
- **`payable` functions**: Any function marked `payable` can accept Ether during the call.

### Sending Methods
There are three ways to send Ether, each with different security implications:

1. **`transfer`**: 
   - Sends 2300 gas (enough for logging, not much else).
   - Reverts automatically on failure.
   - *Legacy*: No longer recommended as gas costs can change.

2. **`send`**: 
   - Sends 2300 gas.
   - Returns a boolean `true`/`false`.
   - *Legacy*: Also not recommended.

3. **`call` (Recommended)**: 
   - Forwards all remaining gas (or a specified amount).
   - Returns a boolean and the returned data.
   - **Security**: Must always check the return value and be aware of reentrancy attacks.
