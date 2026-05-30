# Presentation: Storage Variables and Data Locations

## 1. Introduction to Storage
In Solidity, **Storage** is the permanent database where state variables live. Every smart contract has its own storage space that persists between function calls and transactions.

## 2. Key Data Locations
- **Storage**: Permanent, expensive (gas), persistent.
- **Memory**: Temporary, cheap, exists only during function execution.
- **Calldata**: Read-only, cheapest, used for function arguments.

## 3. Storage Slots
- Storage is divided into **32-byte slots**.
- Slots are numbered from `0` to `2^256 - 1`.
- State variables are assigned slots in the order they are declared.

## 4. Packing Variables
- Small types (like `uint8`, `bool`, `address`) can be packed into a single 32-byte slot to save gas.
- **Rule**: Variables are packed from right to left in a slot.
- **Optimization**: Group smaller variables together in your code.

## 5. Global Context Variables
- `msg.sender`: The address calling the current function.
- `msg.value`: Amount of Wei sent with the call.
- `block.timestamp`: Current block's timestamp.
- `block.number`: Current block's height.

## 6. Constants vs Immutables
- **Constants**: Fixed at compile-time. No storage slot used.
- **Immutables**: Set once in the constructor. No storage slot used.
