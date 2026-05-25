// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Pure Functions
 * @notice Alchemy University — Learn Solidity | Solidity Functions: Lesson 5
 * @dev pure functions neither read nor modify contract state.
 *      They are completely self-contained and deterministic — given the
 *      same inputs they always return the same output, with zero side effects.
 *      This makes them gas-efficient and easy to reason about.
 */
contract Contract {
    function double(uint val) external pure returns (uint) {
        return val * 2;
    }
}
