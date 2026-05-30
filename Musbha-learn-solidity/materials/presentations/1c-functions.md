# Presentation: Solidity Functions

## 1. Anatomy of a Function
```solidity
function name(args) visibility mutability returns(types) { ... }
```

## 2. Visibility Levels
- **Public**: Anyone can call (internal & external).
- **Private**: Only this contract can call.
- **Internal**: This contract and children can call.
- **External**: Only external accounts/contracts can call.

## 3. State Mutability
- **Pure**: No state reading, no state writing.
- **View**: Reading state allowed, no writing.
- **Payable**: Can receive Ether.
- **Default (Non-payable)**: Can read and write state.

## 4. Return Values
- Can return multiple values.
- Named return variables can simplify code.

## 5. Function Overloading
- Same name, different parameter types.
- Resolved at compile-time.

## 6. Special Functions
- **Constructor**: Initialization during deployment.
- **Receive**: Handling plain Ether transfers.
- **Fallback**: Handling calls with no matching function.
