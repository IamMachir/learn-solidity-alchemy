// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Increment Function
 * @notice Alchemy University — Learn Solidity | Solidity Functions: Lesson 2
 * @dev external is preferred over public when a function is only called
 *      from outside the EVM, as it costs less gas.
 *      increment() modifies state so it requires a transaction (not a call).
 */
contract Contract {
    uint public x;

    constructor(uint _x) {
        x = _x;
    }

    function increment() external {
        x = x + 1;
    }
}
