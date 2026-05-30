// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract ConsoleLog {
    function logSomething() public view {
        console.log("Logging from Solidity!");
    }
}
