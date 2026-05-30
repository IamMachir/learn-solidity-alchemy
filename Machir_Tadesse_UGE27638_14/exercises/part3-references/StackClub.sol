// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StackClub {
    address[] public members;

    constructor() {
        members.push(msg.sender);
    }

    modifier onlyMember() {
        require(isMember(msg.sender), "Not a member");
        _;
    }

    function addMember(address _newMember) external onlyMember {
        members.push(_newMember);
    }

    function removeLastMember() external onlyMember {
        members.pop();
    }

    function isMember(address _addr) public view returns (bool) {
        for (uint i = 0; i < members.length; i++) {
            if (members[i] == _addr) return true;
        }
        return false;
    }
}
