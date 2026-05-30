// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Escrow
 * @dev A decentralized financial tool to hold funds between two parties (Depositor and Beneficiary)
 * until a neutral third party (Arbiter) approves the transaction.
 *
 * This contract demonstrates:
 * 1. Role-based access control.
 * 2. Secure Ether transfers using .call().
 * 3. Event emission for off-chain tracking.
 * 4. Use of address types and balances.
 */
contract Escrow {
    // State variables to store participant addresses
    address public depositor;
    address public beneficiary;
    address public arbiter;

    // Event emitted when the transaction is approved and funds are released
    event Approved(uint balance);

    /**
     * @dev Constructor initializes the contract with the arbiter and beneficiary addresses.
     * The contract must be deployed with Ether (the escrow amount).
     * @param _arbiter The neutral third party who will approve the transaction.
     * @param _beneficiary The party who will receive the funds upon approval.
     */
    constructor(address _arbiter, address _beneficiary) payable {
        depositor = msg.sender; // The person deploying the contract is the depositor
        beneficiary = _beneficiary;
        arbiter = _arbiter;
    }

    /**
     * @dev Approves the transaction and releases the full contract balance to the beneficiary.
     * Requirement: Only the arbiter can call this function.
     */
    function approve() external {
        // Access Control: Ensure only the authorized arbiter can release funds
        require(msg.sender == arbiter, "Only arbiter can approve");

        uint balance = address(this).balance;

        // Secure Transfer: Using .call() to send the full balance to the beneficiary
        // This is the recommended way to send Ether since 2019.
        (bool sent, ) = beneficiary.call{value: balance}("");
        require(sent, "Failed to send Ether");

        // Emit an event so off-chain applications know the funds have been released
        emit Approved(balance);
    }
}
