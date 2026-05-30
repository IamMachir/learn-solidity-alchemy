# Notes — Calldata

- Reference types (arrays, strings, structs) MUST specify a data location
- `calldata` — cheapest, comes directly from the transaction, read-only
- `memory` — writable temporary copy, allocated per function call
- `storage` — permanent blockchain storage, expensive to write
- Use `calldata` for external function parameters when you won't modify them
- Copying calldata to memory costs gas — only do it if you need to modify it
