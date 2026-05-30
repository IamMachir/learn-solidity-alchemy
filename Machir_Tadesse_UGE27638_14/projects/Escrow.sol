// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
    Escrow Contract
    ---------------
    Three-party escrow for exchanging ETH against a service or goods.

    Parties:
      - Depositor  : deploys the contract and sends ETH
      - Beneficiary: receives the ETH once approved
      - Arbiter    : trusted third party who approves the transfer

    Usage:
      1. Depositor deploys: new Escrow(arbiterAddress, beneficiaryAddress) with ETH attached
      2. Beneficiary delivers the agreed service or goods
      3. Arbiter calls approve() to release funds
*/

contract Escrow {
    event Approved(uint balance);

    address public depositor;
    address public beneficiary;
    address public arbiter;

    constructor(address _arbiter, address _beneficiary) payable {
        depositor   = msg.sender;
        arbiter     = _arbiter;
        beneficiary = _beneficiary;
    }

    function approve() external {
        require(msg.sender == arbiter, "Only the arbiter can approve");

        uint amount = address(this).balance;

        (bool success, ) = payable(beneficiary).call{value: amount}("");
        require(success, "Transfer failed");

        emit Approved(amount);
    }
}
