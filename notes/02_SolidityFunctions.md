# Notes — Solidity Functions

- `constructor` runs once at deploy; use it to set initial state
- `external` — cheapest visibility for functions only called from outside
- `public` — callable internally and externally (more gas than external)
- `view` — reads state, never writes; free to call (no transaction needed)
- `pure` — no state access at all; purely mathematical
- Function overloading: same name, different parameter types/count
- Underscore prefix (`_param`) prevents variable shadowing in constructors
