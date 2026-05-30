# 08 Arrays - Deep Dive

Arrays in Solidity allow you to store collections of data of the same type.

## 1. Types of Arrays
- **Fixed-Size Arrays**: `uint[5] myFixedArray;`. Size is determined at compile time.
- **Dynamic Arrays**: `uint[] myDynamicArray;`. Size can change during runtime.

## 2. Array Members
- **`length`**: Returns the number of elements in the array.
- **`push()`**: (Dynamic only) Appends an element to the end of the array.
- **`pop()`**: (Dynamic only) Removes the last element from the array.

## 3. Arrays in Memory vs Storage
- Dynamic arrays in **storage** can be resized using `push` and `pop`.
- Dynamic arrays in **memory** must have a fixed size at the time of creation: `uint[] memory a = new uint[](5);`. They cannot be resized.

## 4. Gas Considerations
- **Loops**: Iterating over large arrays can be extremely expensive and might even exceed the block gas limit, causing the transaction to always fail.
- **Storage Cleanup**: Using `pop()` or deleting an element in storage can sometimes provide a small gas refund, but it's still expensive compared to memory.

## 5. Deleting Elements
The `delete` keyword (e.g., `delete myArray[i]`) sets the value at that index to its default (e.g., 0) but does **not** shift the other elements or change the array length.
