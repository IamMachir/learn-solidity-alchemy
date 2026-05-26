// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Escrow
 * @notice Alchemy University — Learn Solidity | Unit 7 — Real World Project
 * @dev Three-party escrow: depositor locks ETH, arbiter approves release
 *      to beneficiary. Uses events to broadcast approval on-chain.
 *
 *      Key concepts: payable constructor, msg.sender roles, events,
 *      address.balance, call{value}().
 */
contract Escrow {

    address public arbiter;
    address public beneficiary;
    address public depositor;

    bool public isApproved;

    event Approved(uint256 balance);

    constructor(address _arbiter, address _beneficiary) payable {
        arbiter     = _arbiter;
        beneficiary = _beneficiary;
        depositor   = msg.sender;
    }

    function approve() external {
        require(msg.sender == arbiter, "Only arbiter can approve");
        require(!isApproved, "Already approved");

        uint256 balance = address(this).balance;
        isApproved = true;

        (bool success, ) = payable(beneficiary).call{value: balance}("");
        require(success, "Transfer failed");

        emit Approved(balance);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
