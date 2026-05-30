# Basic Data Types in Solidity: A Deep Dive

Solidity is a **statically typed language**, meaning the type of each variable (state and local) must be specified at compile-time. This ensures type safety and allows the compiler to optimize storage and gas usage.

## 1. Booleans (`bool`)
Booleans represent a simple true/false value.
- **Possible values**: `true` or `false`.
- **Operators**: 
  - `!` (logical negation)
  - `&&` (logical conjunction, "and")
  - `||` (logical disjunction, "or")
  - `==` (equality)
  - `!=` (inequality)
- **Gas Tip**: Booleans in storage use a full 32-byte slot unless packed with other variables.

## 2. Integers (`int` and `uint`)
Solidity provides both signed (`int`) and unsigned (`uint`) integers of various sizes.
- **Unsigned Integers (`uint`)**: Non-negative integers. Available in steps of 8 bits: `uint8`, `uint16`, ..., `uint256` (default).
- **Signed Integers (`int`)**: Can hold negative values. Available in steps of 8 bits: `int8`, `int16`, ..., `int256` (default).
- **Overflow/Underflow**: Since Solidity 0.8.0, arithmetic operations revert on overflow or underflow by default. For unchecked math, use the `unchecked` block.

## 3. Strings (`string`)
Strings are essentially dynamic byte arrays.
- **Storage**: Strings are stored in UTF-8 encoding.
- **Manipulation**: Strings are expensive to manipulate in Solidity. It is often better to use `bytes32` if the string length is fixed and small (<= 32 characters) to save gas.
- **Comparison**: You cannot compare strings directly using `==`. Instead, you must hash them: `keccak256(abi.encodePacked(s1)) == keccak256(abi.encodePacked(s2))`.

## 4. Enums (`enum`)
Enums allow you to create custom types with a finite set of constant values.
- **Purpose**: Great for tracking state (e.g., `Pending`, `Shipped`, `Accepted`).
- **Under the Hood**: Enums are internally represented as integers (starting from 0).
- **Example**:
  ```solidity
  enum Status { Pending, Shipped, Accepted, Rejected, Canceled }
  Status public status = Status.Pending;
  ```

## 5. Addresses (`address`)
A unique type in Solidity representing an Ethereum address (20 bytes).
- **`address`**: Standard address.
- **`address payable`**: Same as `address` but with additional members `transfer` and `send`, allowing it to receive Ether.
- **Members**: `.balance` (returns balance in Wei), `.code` (returns contract code).
