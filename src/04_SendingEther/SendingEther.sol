// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Sending Ether
 * @notice Alchemy University — Learn Solidity | Unit 4
 * @dev Demonstrates receiving and sending ETH.
 *      receive()  — called when ETH sent with no calldata.
 *      fallback() — called when no function matches.
 *      call{value}() is the recommended way to forward ETH.
 */
contract SendingEther {

    event Received(address indexed sender, uint256 amount);
    event Sent(address indexed to, uint256 amount);

    // Accept plain ETH deposits
    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    fallback() external payable {
        emit Received(msg.sender, msg.value);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }

    // Recommended way to send ETH — forwards all available gas
    function sendEther(address payable to, uint256 amount) external {
        require(address(this).balance >= amount, "Insufficient balance");
        (bool success, ) = to.call{value: amount}("");
        require(success, "Transfer failed");
        emit Sent(to, amount);
    }

    // msg globals example
    function whoCalledMe() external view returns (address sender, uint256 value) {
        sender = msg.sender;
        value  = msg.value;
    }
}
