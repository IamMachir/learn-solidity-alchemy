# Arrays in Solidity: Comprehensive Overview

Arrays in Solidity can be of fixed size or dynamic size. They are used to store a collection of elements of the same type.

## 1. Array Types

### Fixed-Size Arrays
- **Syntax**: `uint[5] public fixedArray;`
- **Behavior**: The size is fixed at compile-time and cannot change. All elements are initialized to their default values (e.g., `0` for `uint`).

### Dynamic-Size Arrays
- **Syntax**: `uint[] public dynamicArray;`
- **Behavior**: The size can change during runtime. New elements can be added using `push()`.

## 2. Array Operations (Dynamic Arrays only)
- **`push(value)`**: Adds an element to the end of the array. Returns a reference to the new element.
- **`pop()`**: Removes the last element from the array. Decreases the array length by 1.
- **`length`**: Property that returns the current number of elements in the array.
- **`delete array[index]`**: Sets the element at the index to its default value. **Does NOT** change the array length or shift other elements.

## 3. Arrays in Memory vs. Storage
- **Storage Arrays**: Can be dynamic or fixed. Modifying them is expensive.
- **Memory Arrays**: **Must be fixed-size**. Dynamic-sized arrays cannot be created in memory.
  ```solidity
  uint[] memory a = new uint[](5); // Fixed size of 5 in memory
  ```

## 4. Gas Considerations & Best Practices
- **Looping over Arrays**: Avoid looping over large dynamic arrays in public/external functions. If the array grows too large, the gas cost to iterate might exceed the block gas limit, effectively "bricking" the contract.
- **Shifting Elements**: Removing an element from the middle of an array and shifting all subsequent elements is extremely gas-expensive. Consider using **Mappings** or a **Swap-and-Pop** pattern:
  ```solidity
  function remove(uint index) public {
      arr[index] = arr[arr.length - 1]; // Move last element to the deleted slot
      arr.pop(); // Remove the last element
  }
  ```

## 5. Byte Arrays (`bytes` and `bytes32`)
- **`bytes`**: A dynamic array of bytes. Similar to `string` but for raw binary data.
- **`bytes32`**: A fixed-size array of 32 bytes. Much more gas-efficient than `bytes` or `string` if the data fits in 32 bytes.
