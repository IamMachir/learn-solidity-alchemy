// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Enum Type
 * @notice Alchemy University — Learn Solidity | Basic Data Types: Lesson 5
 * @dev Enums map named identifiers to uint values starting at 0.
 *      Foods.Apple == 0, Foods.Banana == 1, etc.
 *      Enums make code more readable and less error-prone than raw integers.
 */
contract Contract {
    enum Foods { Apple, Banana, Cherry, Pizza }

    Foods public food1 = Foods.Apple;
    Foods public food2 = Foods.Banana;
    Foods public food3 = Foods.Cherry;
    Foods public food4 = Foods.Pizza;
}
