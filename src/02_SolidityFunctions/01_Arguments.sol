// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Arguments & Constructor
 * @notice Alchemy University — Learn Solidity | Solidity Functions: Lesson 1
 * @dev The constructor is called exactly once at deployment.
 *      The leading underscore on _x prevents variable shadowing —
 *      without it, x inside the constructor would shadow the state variable x.
 */
contract Contract {
    uint public x;

    constructor(uint _x) {
        x = _x;
    }
}
