// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Structs {
    struct User {
        uint256 id;
        string name;
    }

    User public user;

    function setUser(uint256 _id, string memory _name) public {
        user = User(_id, _name);
    }
}
