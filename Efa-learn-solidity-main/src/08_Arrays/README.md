# 08 - Arrays

Arrays are used to store collections of data of the same type. Solidity supports both fixed-size and dynamic arrays.

## Deep Explanations

### Array Types

1. **Fixed-Size Arrays**: `uint[10] myFixedArray;`
   - Size is determined at compile time.
   - Cannot be resized.
   - Gas-efficient because the layout is known.

2. **Dynamic Arrays**: `uint[] myDynamicArray;`
   - Size can change at runtime.
   - Use `push()` to add elements and `pop()` to remove the last element.
   - **Gas Warning**: Iterating over large dynamic arrays can lead to "Out of Gas" errors. Always try to limit the size or avoid full iteration.

### Array Operations
- **`length`**: Returns the number of elements.
- **`delete`**: Resets the element at a specific index to its default value (it does *not* shift the array).
- **In Memory**: Arrays in memory cannot be resized (no `push()` or `pop()`). You must initialize them with a fixed size: `uint[] memory m = new uint[](length);`.
