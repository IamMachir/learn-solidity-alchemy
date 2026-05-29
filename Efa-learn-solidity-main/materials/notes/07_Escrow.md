# Notes: Escrow

Smart contracts as trustless intermediaries.

## 1. The Arbiter Pattern
- **Problem**: How do you trade with someone you don't trust?
- **Solution**: A contract holds the funds. A neutral third party (Arbiter) triggers the release once the deal is verified off-chain.

## 2. Key Components
- **Depositor**: Pays the funds.
- **Beneficiary**: Receives the funds.
- **Arbiter**: Validates the transaction.

## 3. Workflow
1. Depositor deploys the contract with funds.
2. Arbiter verifies delivery of goods/services.
3. Arbiter calls `approve()`.
4. Contract releases funds to Beneficiary.

## 4. Security Enhancements
- **Multi-sig**: Require multiple arbiters to agree before releasing funds.
- **Timelocks**: Allow the depositor to reclaim funds if the arbiter doesn't act within a certain timeframe.
- **Events**: Emit an `Approved` event for easy tracking by front-end applications.
