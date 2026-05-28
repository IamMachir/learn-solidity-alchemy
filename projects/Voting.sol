// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
    Voting Contract
    ---------------
    On-chain governance contract where members create proposals and vote on them.
    When a proposal reaches 10 yes votes, it executes automatically by calling
    the target contract with the stored calldata.

    Key design decisions:
      - Members are set at deployment (Sybil resistance)
      - Voters can change their vote
      - Proposals execute once and cannot be re-executed
      - Execution uses checks-effects-interactions pattern (executed = true before .call)
*/

contract Voting {
    struct Proposal {
        address target;
        bytes   data;
        uint    yesCount;
        uint    noCount;
        bool    executed;
    }

    Proposal[] public proposals;
    mapping(address => bool) public members;
    mapping(uint => mapping(address => bool)) public hasVoted;
    mapping(uint => mapping(address => bool)) public voteChoice;

    event ProposalCreated(uint proposalId);
    event VoteCast(uint proposalId, address voter);

    constructor(address[] memory _memberList) {
        members[msg.sender] = true;
        for (uint i = 0; i < _memberList.length; i++) {
            members[_memberList[i]] = true;
        }
    }

    function newProposal(address _target, bytes calldata _data) external {
        require(members[msg.sender], "Not a member");
        proposals.push(Proposal({
            target:   _target,
            data:     _data,
            yesCount: 0,
            noCount:  0,
            executed: false
        }));
        emit ProposalCreated(proposals.length - 1);
    }

    function castVote(uint _proposalId, bool _supports) external {
        require(members[msg.sender], "Not a member");

        Proposal storage prop = proposals[_proposalId];

        if (hasVoted[_proposalId][msg.sender]) {
            bool prev = voteChoice[_proposalId][msg.sender];
            if (prev != _supports) {
                if (_supports) { prop.yesCount++; prop.noCount--;  }
                else           { prop.noCount++;  prop.yesCount--; }
                voteChoice[_proposalId][msg.sender] = _supports;
            }
        } else {
            if (_supports) prop.yesCount++;
            else           prop.noCount++;
            hasVoted[_proposalId][msg.sender]   = true;
            voteChoice[_proposalId][msg.sender] = _supports;
        }

        emit VoteCast(_proposalId, msg.sender);

        if (prop.yesCount >= 10 && !prop.executed) {
            prop.executed = true;
            (bool success, ) = prop.target.call(prop.data);
            require(success, "Execution failed");
        }
    }
}
