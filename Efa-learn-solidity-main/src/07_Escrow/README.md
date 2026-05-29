# 07 - Escrow

An escrow contract acts as a neutral third party that holds funds until certain conditions are met. This is a classic example of how smart contracts replace traditional legal intermediaries.

## Deep Explanations

### The Escrow Pattern
A typical escrow involves three parties:
1. **Depositor**: The party sending the funds.
2. **Beneficiary**: The party intended to receive the funds.
3. **Arbiter**: The trusted third party who decides when the funds should be released.

### Workflow
1. The **Depositor** deploys the contract and sends Ether to it.
2. The funds are locked in the contract's balance.
3. The **Arbiter** evaluates the real-world agreement (e.g., "was the item delivered?").
4. If satisfied, the **Arbiter** calls the `approve()` function.
5. The contract transfers the balance to the **Beneficiary**.

### Security Considerations
- **Trust**: The arbiter has complete control over the release. In more advanced models, multi-sig or DAO governance can replace a single arbiter.
- **Pull vs Push**: While this example "pushes" funds to the beneficiary, it's often safer to let the beneficiary "pull" their funds to avoid reentrancy or DOS attacks.
