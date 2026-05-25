// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/console.sol";

/**
 * @title Combined — All Lessons
 * @notice Alchemy University — Learn Solidity | All covered exercises combined
 * @dev This file consolidates every concept from Unit 1 (Basic Data Types)
 *      and Unit 2 (Solidity Functions) into a single deployable contract.
 *      Individual lesson files are in their respective unit folders.
 *
 * Units covered:
 *   Unit 1 — Basic Data Types: bool, uint, int, bytes32/string, enum
 *   Unit 2 — Solidity Functions: constructor, external, view, pure, overloading
 */
contract Contract {

    // ── Unit 1: Basic Data Types ──────────────────────────────────────────

    // Lesson 1 — Booleans
    bool public a = true;
    bool public b = false;

    // Lesson 2 — Unsigned Integers
    uint8   public ua  = 100;
    uint16  public ub  = 300;
    uint256 public usum = ua + ub;

    // Lesson 3 — Signed Integers
    int8  public sa         =  50;
    int8  public sb         = -30;
    int16 public difference = sa - sb;   // 80

    // Lesson 4 — Strings & Bytes
    bytes32 public msg1 = "Hello World";
    string  public msg2 = "This is a long string that exceeds 32 bytes and must use the dynamic string type.";

    // Lesson 5 — Enum
    enum Foods { Apple, Banana, Cherry, Pizza }
    Foods public food1 = Foods.Apple;
    Foods public food2 = Foods.Banana;
    Foods public food3 = Foods.Cherry;
    Foods public food4 = Foods.Pizza;

    // ── Unit 2: Solidity Functions ────────────────────────────────────────

    // Lesson 1 — Constructor & Arguments
    uint public x;

    constructor(uint _x) {
        x = _x;
    }

    // Lesson 2 — External / Increment
    function increment() external {
        x = x + 1;
    }

    // Lesson 3 — View & Return Values
    function add(uint y) external view returns (uint) {
        return x + y;
    }

    // Lesson 4 — Console Log (Foundry debugging)
    function winningNumber() external view {
        console.log("The secret winning number is: 42");
    }

    // Lesson 5 — Pure Function (single param)
    function double(uint val) public pure returns (uint) {
        return val * 2;
    }

    // Lesson 6 — Function Overloading (two params, tuple return)
    function double(uint p, uint q) external pure returns (uint, uint) {
        return (double(p), double(q));
    }
}
