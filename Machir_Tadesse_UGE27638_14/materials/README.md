# Course Materials

Reference materials for the Alchemy University Learn Solidity course.

## Official Resources

| Resource | Link |
|----------|------|
| Course Home | https://university.alchemy.com/course/solidity |
| Alchemy University | https://university.alchemy.com |
| Solidity Documentation | https://docs.soliditylang.org |
| Foundry Book | https://book.getfoundry.sh |
| Alchemy Learn Solidity Presentations | https://github.com/alchemyplatform/learn-solidity-presentations |
| OpenZeppelin Contracts | https://github.com/OpenZeppelin/openzeppelin-contracts |

## Solidity Quick Reference

### Data Types
| Type | Range / Notes |
|------|---------------|
| `bool` | `true` / `false` |
| `uint8` | 0 to 255 |
| `uint16` | 0 to 65,535 |
| `uint256` | 0 to 2²⁵⁶ − 1 (default uint) |
| `int8` | −128 to 127 |
| `int256` | default signed integer |
| `bytes32` | fixed 32-byte array, gas-efficient |
| `string` | dynamic UTF-8 text |
| `enum` | named set of uint constants starting at 0 |

### Function Visibility
| Keyword | Accessible from |
|---------|----------------|
| `public` | anywhere (internal + external) |
| `external` | outside the contract only |
| `internal` | this contract + child contracts |
| `private` | this contract only |

### Function State Mutability
| Keyword | Reads state | Modifies state |
|---------|------------|----------------|
| (none) | ✅ | ✅ |
| `view` | ✅ | ❌ |
| `pure` | ❌ | ❌ |

### Solidity File Structure
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MyContract {
    // state variables
    // constructor
    // functions
}
```
