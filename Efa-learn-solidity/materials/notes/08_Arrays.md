# Notes: Arrays

Collections of data in Solidity.

## 1. Fixed vs Dynamic
- **Fixed**: `uint[5]` - Size is part of the type. Cannot be changed.
- **Dynamic**: `uint[]` - Size can grow or shrink using `push()` and `pop()`.

## 2. Memory Arrays
- Arrays created in memory MUST have a fixed size: `uint[] memory a = new uint[](5);`.
- They do not support `push()` or `pop()`.

## 3. Storage Operations
- **`push(value)`**: Adds element to the end. Returns the new length.
- **`pop()`**: Removes the last element.
- **`delete array[index]`**: Resets the value at that index to zero but **does not** change the array length.

## 4. Gas Considerations
- **Iterating**: Loop through arrays with caution. If an array gets too large, the loop might exceed the block gas limit, bricking the contract.
- **Copying**: Copying a storage array to memory copies the entire array. This can be very expensive.
