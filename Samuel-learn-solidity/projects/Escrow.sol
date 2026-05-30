// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Escrow {
    address public depositor;
    address public beneficiary;
    address public arbiter;
    bool public isApproved;

    event Approved(uint256 balance);

    constructor(address _beneficiary, address _arbiter) payable {
        depositor = msg.sender;
        beneficiary = _beneficiary;
        arbiter = _arbiter;
    }

    function approve() public {
        require(msg.sender == arbiter, "Only arbiter can approve");
        uint256 balance = address(this).balance;
        (bool success, ) = beneficiary.call{value: balance}("");
        require(success, "Transfer failed");
        isApproved = true;
        emit Approved(balance);
    }
}
