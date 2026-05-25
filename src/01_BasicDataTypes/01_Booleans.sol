// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Booleans
 * @notice Alchemy University — Learn Solidity | Basic Data Types: Lesson 1
 * @dev Demonstrates boolean storage variables with public visibility.
 *      public variables auto-generate getter functions (e.g. a(), b()).
 *      Uninitialized booleans default to false (EVM zero-value).
 */
contract Contract {
    bool public a = true;
    bool public b = false;
}
