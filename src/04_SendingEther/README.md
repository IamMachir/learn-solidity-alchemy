# Unit 4 — Sending Ether

How value (ETH) moves between accounts and contracts.

| Global | Meaning |
|--------|---------|
| `msg.sender` | Address that made the call |
| `msg.value` | Wei sent with the call |
| `msg.data` | Raw calldata bytes |
| `msg.sig` | First 4 bytes — function selector |

## Sending ETH from a Contract
| Method | Gas | Safe? |
|--------|-----|-------|
| `transfer(amount)` | 2300 gas, reverts on fail | ok but limited |
| `send(amount)` | 2300 gas, returns bool | avoid |
| `call{value:}("")` | forwards all gas | recommended |

Reference: [2-sending-ether/presentation.md](../presentations/2-sending-ether.md)
