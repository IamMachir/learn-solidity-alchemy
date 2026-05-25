// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Strings and Bytes
 * @notice Alchemy University — Learn Solidity | Basic Data Types: Lesson 4
 * @dev bytes32 is a fixed-size array, more gas-efficient for short strings.
 *      string is dynamic and suited for long human-readable text.
 *      Both are allocated dynamically; bytes32 pre-allocates 32 bytes.
 */
contract Contract {
    bytes32 public msg1 = "Hello World";

    string public msg2 = "This is a long string message that exceeds 32 bytes, "
                         "so it must be stored as a dynamic string type in Solidity.";
}
