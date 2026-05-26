// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Arrays
 * @notice Alchemy University — Learn Solidity | Unit 8
 * @dev Fixed arrays have compile-time size.
 *      Dynamic arrays can grow with push() and shrink with pop().
 *      delete arr[i] zeroes the element but does not change .length.
 *      Iterating large arrays on-chain is expensive — use with care.
 */
contract Arrays {

    // Fixed-size array — size locked at 3
    uint256[3] public fixedArr;

    // Dynamic array — grows and shrinks
    uint256[] public dynamicArr;

    // Add element to dynamic array
    function addElement(uint256 val) external {
        dynamicArr.push(val);
    }

    // Remove last element
    function removeLastElement() external {
        dynamicArr.pop();
    }

    // Read element by index
    function getElement(uint256 index) external view returns (uint256) {
        require(index < dynamicArr.length, "Index out of bounds");
        return dynamicArr[index];
    }

    // Length of dynamic array
    function getLength() external view returns (uint256) {
        return dynamicArr.length;
    }

    // Zero out an element (length stays the same)
    function deleteElement(uint256 index) external {
        require(index < dynamicArr.length, "Index out of bounds");
        delete dynamicArr[index];
    }

    // Set fixed array values
    function setFixed(uint256 a, uint256 b, uint256 c) external {
        fixedArr[0] = a;
        fixedArr[1] = b;
        fixedArr[2] = c;
    }

    // Return entire dynamic array (only practical for small arrays)
    function getAll() external view returns (uint256[] memory) {
        return dynamicArr;
    }
}
