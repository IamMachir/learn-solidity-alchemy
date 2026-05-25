// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Signed Integers
 * @notice Alchemy University — Learn Solidity | Basic Data Types: Lesson 3
 * @dev int8 range: -128 to 127. int16 used for difference to safely
 *      hold the absolute difference of two int8 values.
 *      Absolute difference: positive - negative = positive + |negative|
 */
contract Contract {
    int8  public a          =  50;
    int8  public b          = -30;
    int16 public difference = a - b;  // 50 - (-30) = 80
}
