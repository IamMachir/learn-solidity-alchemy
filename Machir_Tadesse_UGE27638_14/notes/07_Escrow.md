# Notes — Escrow Project

- Escrow locks ETH until a trusted third party approves release
- Three roles: depositor, beneficiary, arbiter
- `payable` constructor accepts ETH at deployment
- Events (`emit Approved(amount)`) let front-ends listen for on-chain activity
- Always check `require(!isApproved)` to prevent double-execution
- Use `call{value}()` rather than `transfer()` to forward ETH safely
