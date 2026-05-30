# Notes — Basic Data Types

- `bool` defaults to `false`; stored as a single byte
- `uint` = `uint256`; `uint8` saves gas for small numbers in structs
- `int` covers negative values; same bit sizes as uint
- `bytes32` is fixed 32 bytes — cheaper than `string` for short text
- `string` is dynamic — use for long human-readable text
- `enum` maps names to uints starting at 0 — cleaner than magic numbers
