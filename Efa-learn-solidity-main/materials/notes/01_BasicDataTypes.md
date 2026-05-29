# Notes: Basic Data Types in Solidity

Foundational building blocks for state and logic.

## 1. Booleans (`bool`)
- **Values**: `true` or `false`.
- **Operators**: `!`, `&&`, `||`, `==`, `!=`.
- **Usage**: Conditional statements (`if`, `while`) and state flags.

## 2. Integers
- **Unsigned (`uint`)**: Positive integers only. `uint8` to `uint256`.
- **Signed (`int`)**: Positive and negative integers. `int8` to `int256`.
- **Default**: `uint` and `int` are aliases for `uint256` and `int256`.
- **Overflow/Underflow**: Since Solidity 0.8.0, the compiler automatically checks for overflows/underflows and reverts the transaction if they occur.

## 3. Strings & Bytes
- **Strings**: UTF-8 encoded dynamic arrays. Expensive to store and manipulate.
- **Bytes**: Can be fixed-size (`bytes1` to `bytes32`) or dynamic (`bytes`).
- **Optimization**: Use `bytes32` instead of `string` for short strings whenever possible to save gas.

## 4. Enums
- **Definition**: User-defined types for a finite set of constants.
- **Internal**: Represented as `uint8` (max 256 options).
- **Readability**: Enhances code clarity by using descriptive labels for state transitions.
