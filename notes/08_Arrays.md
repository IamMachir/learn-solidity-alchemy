# Notes — Arrays

- Fixed arrays: `uint[3] arr` — size is compile-time constant
- Dynamic arrays: `uint[] arr` — stored in storage, can grow/shrink
- `push(val)` appends; `pop()` removes the last element
- `delete arr[i]` zeros the slot but does NOT reduce `.length`
- Looping over large arrays on-chain is dangerous (gas limit)
- Memory arrays: `uint[] memory arr = new uint[](size)` — fixed size once created
