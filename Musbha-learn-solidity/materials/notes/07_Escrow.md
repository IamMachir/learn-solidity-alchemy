# Case Study: Escrow Smart Contract

An Escrow contract is a classic example of how smart contracts can replace traditional middle-men. It holds funds until specific conditions are met, usually involving a third-party "arbiter."

## 1. Key Roles
- **Depositor**: The party who sends Ether to the contract (e.g., a buyer).
- **Beneficiary**: The party who will receive the Ether once conditions are met (e.g., a seller).
- **Arbiter**: A neutral third party who decides when to release the funds.

## 2. Core Logic
1. **Deployment**: The `Depositor` deploys the contract and sends Ether to it. The `Arbiter` and `Beneficiary` addresses are set in the constructor.
2. **Holding**: The Ether stays in the contract's balance. No one (not even the depositor) can take it out yet.
3. **Approval**: The `Arbiter` calls an `approve()` function once the work/service is verified.
4. **Transfer**: The `approve()` function sends the full balance to the `Beneficiary`.

## 3. Important Design Patterns
- **Immutability**: Role addresses (`arbiter`, `beneficiary`) should be `immutable` to save gas and ensure they can't be changed after deployment.
- **Events**: Emit an `Approved` event so that front-end applications can update their UI when the funds are released.
- **Access Control**: Use `require(msg.sender == arbiter)` to ensure only the authorized party can release funds.

## 4. Security Considerations
- **Ether Lockup**: Ensure there is a way to handle disputes. What happens if the arbiter never approves? (Advanced versions might include a "Refund" function after a timeout).
- **Reentrancy**: Even in a simple escrow, use the **Checks-Effects-Interactions** pattern during the `approve()` call.

## 5. Example Structure
```solidity
contract Escrow {
    address public immutable arbiter;
    address public immutable beneficiary;
    address public immutable depositor;

    event Approved(uint balance);

    constructor(address _arbiter, address _beneficiary) payable {
        arbiter = _arbiter;
        beneficiary = _beneficiary;
        depositor = msg.sender;
    }

    function approve() external {
        require(msg.sender == arbiter, "Only arbiter");
        uint balance = address(this).balance;
        (bool success, ) = beneficiary.call{value: balance}("");
        require(success, "Transfer failed");
        emit Approved(balance);
    }
}
```
