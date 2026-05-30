# Notes — Sending Ether

- `msg.sender` — whoever called the current function
- `msg.value` — ETH (in wei) sent along with the call
- A function must be `payable` to receive ETH
- `receive()` — special function called when ETH sent with no calldata
- `fallback()` — called when no matching function signature found
- Preferred send method: `(bool ok,) = addr.call{value: amount}("")`
- `transfer()` and `send()` are discouraged — only forward 2300 gas
- 1 ETH = 1,000,000,000,000,000,000 wei (1e18)
