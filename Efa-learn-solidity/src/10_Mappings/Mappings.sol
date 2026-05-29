// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mappings {
    mapping(address => uint) public balances;

    function setBalance(address _addr, uint _amount) public {
        balances[_addr] = _amount;
    }

    function getBalance(address _addr) public view returns (uint) {
        return balances[_addr];
    }

    function remove(address _addr) public {
        delete balances[_addr];
    }
}
