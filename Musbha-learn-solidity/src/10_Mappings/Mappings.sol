// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mappings {
    mapping(address => uint) public balances;

    function updateBalance(uint _newBalance) public {
        balances[msg.sender] = _newBalance;
    }

    function getBalance(address _addr) public view returns (uint) {
        return balances[_addr];
    }
}
