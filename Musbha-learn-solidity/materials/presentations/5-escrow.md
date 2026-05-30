# Presentation: Escrow Smart Contract

## 1. What is Escrow?
A neutral third-party contract that holds funds until specific conditions are met between a buyer and a seller.

## 2. The Players
- **Depositor**: Puts Ether into the contract.
- **Beneficiary**: Receives Ether after approval.
- **Arbiter**: Decides when the transaction is complete.

## 3. Workflow
1. **Deployment**: Depositor deploys with Arbiter/Beneficiary addresses.
2. **Deposit**: Ether is locked in the contract balance.
3. **Verification**: Arbiter confirms goods/services were delivered.
4. **Approval**: Arbiter calls `approve()`.
5. **Release**: Funds are transferred to the Beneficiary.

## 4. Design Principles
- **Access Control**: Only the Arbiter should be able to call `approve()`.
- **Events**: Emit `Approved` event for off-chain tracking.
- **Security**: Prevent double-spending or unauthorized withdrawals.
