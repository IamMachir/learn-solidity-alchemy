# Presentation: Sending Ether

## 1. How to Send Ether
- **`transfer`**: 2300 gas, reverts on failure.
- **`send`**: 2300 gas, returns bool.
- **`call`**: Forwards all gas (customizable), returns bool & data. **(Recommended)**

## 2. Why `call` is Preferred
- Modern smart contracts often require more than 2300 gas to receive Ether (e.g., to emit events or update state).
- `transfer` and `send` break when gas costs change or when recipient is a contract.

## 3. Security: Reentrancy
- When sending Ether with `call`, the recipient contract can call back into your contract.
- **Solution**: Always update your contract's state **before** calling the external address (Checks-Effects-Interactions).

## 4. Withdrawal Pattern (Pull vs Push)
- **Push**: Contract tries to send Ether to many users (Risky: one failure blocks all).
- **Pull**: Users call a function to claim their own Ether (Safe: failure only affects that user).

## 5. Units of Value
- 1 ether = 10^18 wei.
- Always perform math in `wei` to maintain precision.
