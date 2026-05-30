// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SendingEther {
    receive() external payable {}

    function sendEther(address payable _to) public payable {
        (bool success, ) = _to.call{value: msg.value}("");
        require(success, "Transfer failed.");
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
