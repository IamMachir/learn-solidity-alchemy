# Unit 1 — Basic Data Types

Covers the fundamental value types available in Solidity.

| Lesson | Topic | File |
|--------|-------|------|
| 1 | Booleans | `01_Booleans.sol` |
| 2 | Unsigned Integers | `02_UnsignedIntegers.sol` |
| 3 | Signed Integers | `03_SignedIntegers.sol` |
| 4 | Strings & Bytes | `04_Strings.sol` |
| 5 | Enum Type | `05_Enum.sol` |

### Key Concepts
- **Storage variables** are stored permanently on the blockchain.
- The `public` keyword auto-generates a getter function for a variable.
- `uint` defaults to `uint256`; `int` defaults to `int256`.
- `bytes32` is more gas-efficient than `string` for short text.
- Enums improve code readability by replacing magic numbers with named values.
