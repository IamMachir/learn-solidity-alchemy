// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract ConsoleLog {
    uint public x = 10;

    function logX() public view {
        console.log("The value of x is:", x);
    }
}
