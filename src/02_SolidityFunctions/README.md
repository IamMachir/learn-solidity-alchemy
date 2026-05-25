# Unit 2 — Solidity Functions

Covers how to define and call functions in Solidity smart contracts.

| Lesson | Topic | File |
|--------|-------|------|
| 1 | Constructor & Arguments | `01_Arguments.sol` |
| 2 | Increment (External Functions) | `02_Increment.sol` |
| 3 | View & Return Values | `03_ViewAddition.sol` |
| 4 | Console Log (Debugging) | `04_ConsoleLog.sol` |
| 5 | Pure Functions | `05_PureDouble.sol` |
| 6 | Function Overloading | `06_DoubleOverload.sol` |

### Key Concepts
- `constructor` runs once at deployment; used to initialise state variables.
- `external` functions are callable from outside the contract only (cheaper gas).
- `view` functions read state but never modify it.
- `pure` functions neither read nor write contract state.
- Function **overloading** allows multiple functions with the same name but different parameters.
- Foundry's `console.log` (from `forge-std`) enables debug output during testing.
