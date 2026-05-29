# 01 - Basic Data Types

This module covers the fundamental building blocks of Solidity. Understanding how data is represented on-chain is crucial for both gas optimization and contract security.

## Deep Explanations

### 1. Booleans
Booleans in Solidity (`bool`) can only hold two values: `true` or `false`. They are commonly used for status flags and access control checks.

### 2. Unsigned Integers (uint)
The most common data type in Solidity. `uint` represents non-negative integers. 
- **Sizes**: Range from `uint8` to `uint256` (in increments of 8).
- **Default**: `uint` is an alias for `uint256`.
- **Gas Tip**: While `uint8` uses less storage, the EVM operates on 32-byte (256-bit) words. Sometimes using smaller types can actually cost *more* gas due to padding, unless packed in a struct.

### 3. Signed Integers (int)
Used when negative values are required. Like `uint`, they range from `int8` to `int256`.

### 4. Strings
Strings are essentially dynamic byte arrays. 
- **Storage**: Highly expensive on-chain.
- **Manipulation**: Solidity has limited built-in string manipulation. Often, it's better to handle strings off-chain and pass only what's necessary to the contract.

### 5. Enums
Enums allow you to create custom types with a finite set of constant values.
- **Readability**: Makes code much more readable than using arbitrary integers (e.g., `Status.Shipped` instead of `1`).
- **Internal Representation**: Enums are represented as `uint8` internally.
