// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Enums {
    enum Status { Pending, Shipped, Delivered, Cancelled }
    Status public status;

    function setStatus(Status _status) public {
        status = _status;
    }

    function cancel() public {
        status = Status.Cancelled;
    }
}
