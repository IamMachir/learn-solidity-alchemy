# Notes — Storage Variables

- Every state variable occupies a numbered storage slot (0x0, 0x1…)
- Reading storage costs 100–2100 gas (SLOAD); writing costs 20,000 gas (SSTORE)
- `memory` — temp space in RAM, wiped after function; much cheaper than storage
- `calldata` — read-only area where function arguments arrive; cheapest of all
- Assigning `storage pointer = storageVar` does NOT copy — it's a reference
- Minimise storage writes to keep gas costs down
