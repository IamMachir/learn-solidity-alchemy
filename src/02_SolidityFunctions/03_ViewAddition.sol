// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title View Functions & Return Values
 * @notice Alchemy University — Learn Solidity | Solidity Functions: Lesson 3
 * @dev view functions guarantee they will not modify state — the compiler
 *      enforces this. They can be called without a transaction (free to read).
 *      add() takes a uint parameter and returns x + that parameter.
 */
contract Contract {
    uint public x;

    constructor(uint _x) {
        x = _x;
    }

    function increment() external {
        x = x + 1;
    }

    function add(uint y) external view returns (uint) {
        return x + y;
    }
}
