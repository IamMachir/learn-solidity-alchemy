// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Enums {
    enum Status { Pending, Shipped, Accepted, Rejected, Canceled }
    Status public status;

    function set(Status _status) public {
        status = _status;
    }

    function cancel() public {
        status = Status.Canceled;
    }
}
