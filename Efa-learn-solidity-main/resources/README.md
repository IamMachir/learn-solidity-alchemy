# Resources

## Official Course Links
| Resource | URL |
|----------|-----|
| Alchemy University — Learn Solidity | https://university.alchemy.com/course/solidity |
| Course Presentations (GitHub) | https://github.com/alchemyplatform/learn-solidity-presentations |
| Alchemy University Home | https://university.alchemy.com |

## Solidity References
| Resource | URL |
|----------|-----|
| Official Solidity Docs | https://docs.soliditylang.org/en/v0.8.20 |
| Solidity by Example | https://solidity-by-example.org |
| Foundry Book | https://book.getfoundry.sh |
| OpenZeppelin Contracts | https://github.com/OpenZeppelin/openzeppelin-contracts |
| Ethereum Yellow Paper | https://ethereum.github.io/yellowpaper/paper.pdf |

## Tools
| Tool | URL |
|------|-----|
| Remix IDE (browser Solidity) | https://remix.ethereum.org |
| Hardhat | https://hardhat.org |
| Foundry | https://getfoundry.sh |
| Etherscan | https://etherscan.io |

## Security & Auditing
| Resource | URL |
|----------|-----|
| Rekt News (Security Lessons) | https://rekt.news |
| Secureum (Security Education) | https://secureum.substack.com |
| Trail of Bits Blog | https://blog.trailofbits.com |
| Immunefi (Bug Bounties) | https://immunefi.com |

## Gas Optimization
| Resource | URL |
|----------|-----|
| Gas Optimization Manual | https://github.com/0xKitsune/Gas-Optimization-Guide |
| RareSkills Gas Optimization | https://www.rareskills.io/post/gas-optimization |

## Layer 2 & Scaling
| Resource | URL |
|----------|-----|
| L2Beat (Analytics) | https://l2beat.com |
| Arbitrum Docs | https://docs.arbitrum.io |
| Optimism Docs | https://docs.optimism.io |
| Polygon Docs | https://wiki.polygon.technology |

# Deep Explanations: The Web3 Ecosystem

Understanding the "Why" behind the "How" is what separates a developer from an engineer.

## 1. The Ethereum Virtual Machine (EVM)
The EVM is a globally accessible, decentralized computer. Every node in the network runs the same code to reach the same state.
- **Stack-Based**: The EVM uses a stack to execute operations (LIFO - Last In, First Out).
- **Word Size**: Everything in the EVM is handled in 256-bit (32-byte) words. This is why `uint256` is the native and most efficient integer type.
- **Deterministic**: Given the same input and state, the EVM will *always* produce the same output.

## 2. Gas and the Fee Market
Gas is the "fuel" of Ethereum. It measures the computational effort required to execute an operation.
- **Base Fee**: Burned by the network (EIP-1559).
- **Priority Fee**: Tipped to the validator to prioritize your transaction.
- **Gas Limit**: The maximum amount of gas you are willing to spend. If you exceed this, the transaction reverts, but you still pay for the gas used.

## 3. Smart Contract Security Patterns
- **Checks-Effects-Interactions (CEI)**: Always validate inputs (Checks), update your contract state (Effects), and *then* interact with external contracts (Interactions). This is the #1 defense against reentrancy.
- **Access Control**: Use `Ownable` or `AccessControl` to restrict sensitive functions. Never assume a function is safe just because it's not "public".
- **Emergency Stops**: Implement "Pause" functionality for critical systems to stop transactions if a vulnerability is discovered.

## 4. Decentralized Storage
Smart contracts are great for logic but terrible for large files.
- **IPFS**: InterPlanetary File System. A peer-to-peer network for storing and sharing data. Use it for NFT metadata and large images.
- **Arweave**: Permanent storage that you pay for once and store forever.

---
## Cheat Sheet

### Visibility
```
private   → this contract only
internal  → this + child contracts
public    → anywhere
external  → outside only (cheapest for params)
```

### State Mutability
```
(none)  → read + write state
view    → read only
pure    → no state access
payable → can receive ETH
```

### Data Locations
```
storage  → on-chain, permanent, expensive
memory   → temp, cheap, wiped after function
calldata → temp, cheapest, read-only (external params)
```
