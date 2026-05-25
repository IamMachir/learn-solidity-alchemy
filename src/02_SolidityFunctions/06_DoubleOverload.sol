// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Function Overloading
 * @notice Alchemy University — Learn Solidity | Solidity Functions: Lesson 6
 * @dev Solidity supports function overloading: same name, different parameters.
 *      The compiler resolves which version to call based on argument types/count.
 *      double(uint) doubles one value.
 *      double(uint, uint) doubles both values and returns them as a tuple.
 *      Tuples are used for multiple return values; they are not a formal type.
 */
contract Contract {
    // Single parameter — doubles one value
    function double(uint x) public pure returns (uint) {
        return x * 2;
    }

    // Two parameters — doubles both and returns as tuple
    function double(uint x, uint y) external pure returns (uint, uint) {
        return (double(x), double(y));
    }
}
