// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Unsigned Integers
 * @notice Alchemy University — Learn Solidity | Basic Data Types: Lesson 2
 * @dev uint8 holds 0–255, uint16 holds 0–65535, uint256 is the default.
 *      sum uses uint256 to safely store the result of adding ua + ub
 *      even though individually they fit in smaller types.
 */
contract Contract {
    uint8  public a   = 100;
    uint16 public b   = 300;
    uint256 public sum = a + b;
}
