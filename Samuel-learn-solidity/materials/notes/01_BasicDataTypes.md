# 01 Basic Data Types - Deep Dive

Solidity is a statically typed language, which means that the type of each variable (state and local) needs to be specified.

## 1. Booleans
The `bool` type has two constant values: `true` and `false`.
- **Logical Operators**: `!` (not), `&&` (and), `||` (or), `==` (equality), `!=` (inequality).
- **Usage**: Typically used for conditional logic in `if` statements or `require` checks.

## 2. Integers
Solidity provides several sizes of integers:
- **Unsigned Integers (`uint`)**: Positive numbers only. Range from `uint8` (0 to 255) to `uint256` (2^256 - 1). `uint` is an alias for `uint256`.
- **Signed Integers (`int`)**: Both positive and negative numbers. Range from `int8` (-128 to 127) to `int256`. `int` is an alias for `int256`.
- **Overflow/Underflow**: Since Solidity 0.8.0, the compiler automatically checks for overflows and underflows, reverting the transaction if one occurs.

## 3. Strings
Strings are used for arbitrary-length UTF-8 data.
- **Storage**: Strings are expensive in terms of gas because they are stored as `bytes`.
- **Manipulation**: Solidity doesn't have many built-in string manipulation functions. You often need to convert them to `bytes` to access individual characters.

## 4. Enums
Enums are a way to create a user-defined type with a finite set of constant values.
- **Internally**: Enums are represented as integers (starting from 0).
- **Example**: `enum Status { Pending, Shipped, Delivered }`
- **Benefit**: They make code more readable and less prone to errors compared to using raw integers for states.

## 5. Addresses (Bonus)
The `address` type holds a 20-byte value (Ethereum address).
- **`address payable`**: Same as `address`, but includes members `transfer` and `send`, allowing you to send Ether to it.
