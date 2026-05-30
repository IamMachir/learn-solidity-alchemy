// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mappings {
    mapping(address => uint256) public balances;

    function updateBalance(uint256 _balance) public {
        balances[msg.sender] = _balance;
    }
}
