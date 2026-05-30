# 02 Solidity Functions - Deep Dive

Functions are the executable units of code within a contract.

## 1. Function Syntax
```solidity
function name(parameter_list) visibility mutability returns (return_type) {
    // code
}
```

## 2. Visibility Modifiers
- **`public`**: Can be called internally (from within the contract) or externally (by users or other contracts).
- **`private`**: Only accessible from within the contract where it is defined.
- **`internal`**: Similar to `private`, but also accessible by contracts that inherit from this contract.
- **`external`**: Can only be called from outside the contract. More gas-efficient than `public` for receiving large arrays of data.

## 3. Mutability Modifiers
- **`view`**: Promises that the function will not modify the state (but can read it). No gas cost when called externally.
- **`pure`**: Promises that the function will neither read nor modify the state. Used for utility calculations.
- **`payable`**: Allows the function to receive Ether along with the call.

## 4. Return Values
Functions can return multiple values.
```solidity
function getResults() public pure returns (uint, bool) {
    return (1, true);
}
```

## 5. Function Overloading
You can have multiple functions with the same name but different parameter types/counts.
