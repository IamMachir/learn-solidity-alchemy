// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Storage Variables
 * @notice Alchemy University — Learn Solidity | Unit 3
 * @dev Demonstrates storage slots, memory vs storage distinction.
 *      storage variables persist across transactions on-chain.
 *      memory variables are temporary — they vanish after the function.
 *      Assigning a storage pointer means changes affect the original slot.
 */
contract StorageVariables {

    // Each gets its own storage slot: a=0x0, b=0x1, c=0x2
    uint256 public a;
    uint256 public b;
    bool    public c;

    // Writes directly to storage slot 0x0 from slot 0x1
    function copyBtoA() external {
        a = b;          // reads slot 0x1, writes slot 0x0
    }

    // x is a memory variable — does NOT affect storage slot 0x1
    function readBtoMemory() external view returns (uint256) {
        uint256 x = b;  // temporary copy in memory
        return x;
    }

    function setValues(uint256 _a, uint256 _b, bool _c) external {
        a = _a;
        b = _b;
        c = _c;
    }
}
