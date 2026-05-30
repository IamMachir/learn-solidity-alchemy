// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/console.sol";

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

    function winningNumber(string calldata message) external returns (uint) {
        console.log(message);
        return 794;
    }

    function double(uint val) public pure returns (uint) {
        return val * 2;
    }

    function double(uint p, uint q) external pure returns (uint, uint) {
        return (double(p), double(q));
    }
}
