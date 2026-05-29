// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EnumExample {
    enum Status { Pending, Shipped, Delivered, Cancelled }
    Status public status;

    function ship() public {
        status = Status.Shipped;
    }

    function getStatus() public view returns (Status) {
        return status;
    }
}
