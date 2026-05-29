// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Escrow {
    address public depositor;
    address public beneficiary;
    address public arbiter;

    constructor(address _arbiter, address _beneficiary) payable {
        depositor = msg.sender;
        beneficiary = _beneficiary;
        arbiter = _arbiter;
    }

    function approve() external {
        require(msg.sender == arbiter);
        uint balance = address(this).balance;
        (bool sent, ) = beneficiary.call{value: balance}("");
        require(sent);
    }
}
