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
