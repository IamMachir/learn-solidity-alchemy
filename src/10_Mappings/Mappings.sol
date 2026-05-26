// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Mappings
 * @notice Alchemy University — Learn Solidity | Unit 10
 * @dev Mappings store key-value pairs on-chain.
 *      Unset keys return the zero-value (0, false, address(0)).
 *      You cannot loop over a mapping — pair with an array if needed.
 *      Nested mappings are useful for 2D relationships (e.g. allowances).
 */
contract Mappings {

    // Simple balance mapping
    mapping(address => uint256) public balances;

    // Nested mapping — address approved to spend on behalf of another
    mapping(address => mapping(address => bool)) public approved;

    // Track which addresses have been seen (for iteration)
    address[] public users;
    mapping(address => bool) private exists;

    // Deposit ETH — updates caller's balance
    function deposit() external payable {
        if (!exists[msg.sender]) {
            users.push(msg.sender);
            exists[msg.sender] = true;
        }
        balances[msg.sender] += msg.value;
    }

    // Transfer balance between two accounts
    function transfer(address to, uint256 amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[to]         += amount;
    }

    // Nested mapping — approval
    function setApproval(address spender, bool status) external {
        approved[msg.sender][spender] = status;
    }

    function isApproved(address owner, address spender) external view returns (bool) {
        return approved[owner][spender];
    }

    function getUserCount() external view returns (uint256) {
        return users.length;
    }
}
