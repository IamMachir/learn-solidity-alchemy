# Unit 7 — Escrow Project

First real-world smart contract — a 3-party escrow agreement.

## Parties
| Role | Description |
|------|-------------|
| Depositor | Sends ETH into escrow |
| Beneficiary | Receives ETH when approved |
| Arbiter | Trusted third party who approves the release |

## Flow
1. Depositor deploys contract, specifying arbiter and beneficiary
2. Depositor sends ETH to the contract
3. Arbiter calls `approve()` to release funds to beneficiary
4. Contract emits `Approved` event and self-destructs

Reference: [5-escrow/presentation.md](../presentations/5-escrow.md)
