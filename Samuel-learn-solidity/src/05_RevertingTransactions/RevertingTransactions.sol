// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RevertingTransactions {
    function testRequire(uint256 _i) public pure {
        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint256 _i) public pure {
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    function testAssert(uint256 _i) public pure {
        assert(_i != 0);
    }
}
