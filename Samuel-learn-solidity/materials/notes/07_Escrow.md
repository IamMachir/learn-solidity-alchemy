# 07 Escrow - Deep Dive

An Escrow contract is a classic example of a "trusted third party" implemented in code.

## 1. The Core Pattern
- **Participants**: 
    1. **Depositor**: Sends funds to the contract.
    2. **Beneficiary**: Receives the funds once the service/product is delivered.
    3. **Arbiter**: A neutral party who "approves" the release of funds.
- **Workflow**:
    1. Depositor deploys the contract and sends Ether.
    2. The funds are held safely in the contract's balance.
    3. Once the Arbiter verifies delivery, they call `approve()`.
    4. The contract transfers the entire balance to the Beneficiary.

## 2. Security Considerations
- **Access Control**: Only the designated Arbiter should be able to call the `approve` function.
- **Pull vs Push**: While simple escrows "push" funds to the beneficiary, larger systems often use a "pull" pattern where the beneficiary withdraws the funds themselves to avoid potential denial-of-service attacks.
- **Immutability**: Once deployed, the addresses of the participants and the amount should usually be fixed to ensure trust.

## 3. Events
Good Escrow contracts emit events (e.g., `Approved`) to allow off-chain applications (like a frontend) to track the state of the transaction.
