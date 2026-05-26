// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Reverting Transactions
 * @notice Alchemy University — Learn Solidity | Unit 5
 * @dev Shows require, revert with custom errors, and assert.
 *      When a transaction reverts, ALL state changes are undone.
 *      Custom errors are cheaper than string messages (less calldata).
 */
contract RevertingTransactions {

    address public owner;
    uint256 public value;

    // Custom errors — more gas efficient than string messages
    error NotOwner(address caller);
    error ValueTooLow(uint256 provided, uint256 minimum);
    error Overflow();

    constructor() {
        owner = msg.sender;
    }

    // require — classic way, string message
    function onlyPositive(uint256 x) external pure returns (uint256) {
        require(x > 0, "Value must be positive");
        return x;
    }

    // revert with custom error — cheaper, recommended in 0.8+
    function onlyOwner() external view returns (bool) {
        if (msg.sender != owner) revert NotOwner(msg.sender);
        return true;
    }

    // Custom error with parameters
    function setMinValue(uint256 _value) external {
        if (_value < 100) revert ValueTooLow(_value, 100);
        value = _value;
    }

    // assert — for catching bugs (should never be false)
    function safeMath(uint256 a, uint256 b) external pure returns (uint256) {
        uint256 result = a + b;
        assert(result >= a); // should always hold — catches overflow bugs
        return result;
    }
}
