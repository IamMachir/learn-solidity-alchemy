// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Calldata
 * @notice Alchemy University — Learn Solidity | Unit 6
 * @dev Reference types need an explicit data location.
 *      calldata — cheapest, read-only, used for external function inputs.
 *      memory   — modifiable temp copy, used inside functions.
 *      storage  — permanent on-chain, expensive to write.
 */
contract CalldataDemo {

    string public storedMessage;

    // calldata — cheapest, can't modify the input inside the function
    function saveMessage(string calldata _msg) external {
        storedMessage = _msg;  // copies calldata into storage
    }

    // memory — makes a modifiable copy
    function processMessage(string memory _msg) public pure returns (string memory) {
        // can manipulate _msg here since it's in memory
        return _msg;
    }

    // Showing difference: calldata param passed to memory function
    function upperExample(string calldata input) external pure returns (string memory) {
        return processMessage(input); // calldata -> memory copy happens here
    }

    // Array with calldata
    function sumArray(uint256[] calldata nums) external pure returns (uint256 total) {
        for (uint256 i = 0; i < nums.length; i++) {
            total += nums[i];
        }
    }
}
