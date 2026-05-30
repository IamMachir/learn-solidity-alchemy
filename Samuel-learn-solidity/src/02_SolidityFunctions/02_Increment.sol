// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Increment {
    uint256 public count;

    function increment() public {
        count += 1;
    }
}
