# Arrays

## Fixed Arrays

```solidity
uint[3] memory nums = [1, 2, 3];
```

Size set at compile time. Cannot grow or shrink. Accessing out-of-range index reverts.

## Dynamic Arrays

```solidity
uint[] public numbers;

numbers.push(5);   // add to end
numbers.pop();     // remove from end
numbers.length;    // current size
delete numbers[i]; // zeroes the element, does NOT shrink the array
```

`push` and `pop` only work on storage arrays.

## Memory Arrays

```solidity
uint[] memory result = new uint[](count);
```

Memory arrays cannot be resized after initialization. Use `new` with a size.

## Storage vs Memory

```solidity
uint[3] storage ref = myArray;   // reference — modifying ref modifies myArray
uint[3] memory copy = myArray;   // copy — modifying copy does NOT affect myArray
```

Assigning to a `storage` variable creates a reference. Assigning to `memory` copies the values.

## Gas Note

Iterating over large arrays is expensive. If you only need lookup, use a mapping instead.
