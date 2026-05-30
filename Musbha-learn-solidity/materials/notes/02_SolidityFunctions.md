# Solidity Functions: Detailed Guide

Functions are the building blocks of a smart contract. They define the behavior and logic of the contract.

## 1. Function Syntax
```solidity
function functionName(parameter_list) visibility state_mutability returns(return_type) {
    // Logic
}
```

## 2. Visibility Modifiers
Visibility determines who can call the function:
- **`public`**: Can be called internally (from within the contract) and externally (via transactions or other contracts).
- **`private`**: Can only be called from within the contract where it is defined. Not even derived contracts can call it.
- **`internal`**: Similar to `private`, but derived contracts **can** call it.
- **`external`**: Can only be called from outside the contract. It is often more gas-efficient than `public` for receiving large amounts of data (stored in `calldata`).

## 3. State Mutability
Mutability defines how the function interacts with the blockchain state:
- **`pure`**: Does not read or modify the state. Usually used for utility functions (e.g., math).
- **`view`**: Reads the state but does not modify it. Calling a `view` function from outside costs no gas.
- **`payable`**: Allows the function to receive Ether along with the call.
- **Default**: If none of these are specified, the function is assumed to read and modify the state.

## 4. Return Values
Functions can return multiple values:
```solidity
function getValues() public pure returns (uint, bool) {
    return (1, true);
}
```
You can also name return variables in the `returns` section, which allows you to omit the `return` statement:
```solidity
function getValues() public pure returns (uint x, bool y) {
    x = 1;
    y = true;
}
```

## 5. Function Overloading
Solidity supports function overloading, meaning you can have multiple functions with the same name but different parameter types/counts.

## 6. Special Functions
- **`constructor`**: Executed only once when the contract is deployed. Used for initialization.
- **`receive()`**: Executed when the contract receives Ether with no data.
- **`fallback()`**: Executed when a called function does not exist or when Ether is sent with data but no `receive()` is defined.
