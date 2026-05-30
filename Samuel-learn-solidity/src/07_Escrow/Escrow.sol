// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Escrow {
    address public depositor;
    address public beneficiary;
    address public arbiter;

    constructor(address _beneficiary, address _arbiter) payable {
        depositor = msg.sender;
        beneficiary = _beneficiary;
        arbiter = _arbiter;
    }

    function approve() public {
        require(msg.sender == arbiter, "Only arbiter can approve");
        (bool success, ) = beneficiary.call{value: address(this).balance}("");
        require(success, "Transfer failed");
    }
}
