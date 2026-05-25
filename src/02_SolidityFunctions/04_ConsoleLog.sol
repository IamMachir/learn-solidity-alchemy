// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/console.sol";

/**
 * @title Console Log / Debugging
 * @notice Alchemy University — Learn Solidity | Solidity Functions: Lesson 4
 * @dev forge-std console.sol lets you emit log messages during Foundry tests.
 *      This is a Foundry-only feature — console.log output appears in
 *      test results when running `forge test -vv`.
 *      The function uses `view` even though console.log is technically a
 *      side effect; Foundry handles this via a special cheatcode address.
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

    function winningNumber() external view {
        console.log("The secret winning number is: 42");
    }
}
