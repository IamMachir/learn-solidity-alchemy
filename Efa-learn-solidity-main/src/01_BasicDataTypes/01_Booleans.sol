// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Booleans {
    bool public isReady = true;
    bool public isComplete = false;

    function setReady(bool _status) public {
        isReady = _status;
    }
}
