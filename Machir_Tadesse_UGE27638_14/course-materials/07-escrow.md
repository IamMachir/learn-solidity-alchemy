# Escrow Contract

An escrow holds funds in a smart contract until a trusted third party confirms that a service or good has been delivered.

## The Three Parties

| Role | Description |
|------|-------------|
| Depositor | Deploys the contract and sends ETH into it |
| Beneficiary | Receives the ETH once the arbiter approves |
| Arbiter | Trusted third party who calls approve() |

## Flow

1. Depositor deploys the contract, passing arbiter and beneficiary addresses. Sends ETH in the constructor.
2. Beneficiary delivers the service or goods.
3. Arbiter calls `approve()`.
4. Contract transfers all ETH to beneficiary and emits an `Approved` event.

## Key Concepts Used

- `payable` constructor
- `msg.sender` for role assignment
- Access control with `require`
- Events for front-end listening
- Low-level `.call{value}()` for ETH transfer

## Why Smart Contract Escrow?

Traditional escrow needs a lawyer or escrow company. A smart contract removes that intermediary — the rules are enforced by code, not by trust in a person.
