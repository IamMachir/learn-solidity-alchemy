// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Voting
 * @notice Alchemy University — Learn Solidity | Unit 11 — Real World Project
 * @dev Members create proposals and vote. When yes votes meet the threshold
 *      the proposal's calldata is executed against the target contract.
 *      Combines structs, mappings, arrays, events, and external calls.
 */
contract Voting {

    struct Proposal {
        address target;
        bytes   data;
        uint256 yesCount;
        uint256 noCount;
        bool    executed;
    }

    Proposal[] public proposals;

    // Track whether an address has voted on a given proposal
    mapping(uint256 => mapping(address => bool)) public hasVoted;

    address[] public members;
    mapping(address => bool) public isMember;

    uint256 public quorum;

    event ProposalCreated(uint256 indexed proposalId, address indexed creator);
    event VoteCast(uint256 indexed proposalId, address indexed voter, bool vote);
    event ProposalExecuted(uint256 indexed proposalId);

    constructor(address[] memory _members, uint256 _quorum) {
        for (uint256 i = 0; i < _members.length; i++) {
            members.push(_members[i]);
            isMember[_members[i]] = true;
        }
        quorum = _quorum;
    }

    modifier onlyMember() {
        require(isMember[msg.sender], "Not a member");
        _;
    }

    function createProposal(address _target, bytes calldata _data)
        external onlyMember returns (uint256)
    {
        proposals.push(Proposal({
            target:   _target,
            data:     _data,
            yesCount: 0,
            noCount:  0,
            executed: false
        }));
        uint256 id = proposals.length - 1;
        emit ProposalCreated(id, msg.sender);
        return id;
    }

    function vote(uint256 proposalId, bool support) external onlyMember {
        require(proposalId < proposals.length, "Invalid proposal");
        require(!hasVoted[proposalId][msg.sender], "Already voted");

        hasVoted[proposalId][msg.sender] = true;
        Proposal storage p = proposals[proposalId];

        if (support) {
            p.yesCount++;
        } else {
            p.noCount++;
        }

        emit VoteCast(proposalId, msg.sender, support);

        if (p.yesCount >= quorum && !p.executed) {
            _execute(proposalId);
        }
    }

    function _execute(uint256 proposalId) internal {
        Proposal storage p = proposals[proposalId];
        p.executed = true;
        (bool success, ) = p.target.call(p.data);
        require(success, "Execution failed");
        emit ProposalExecuted(proposalId);
    }

    function getProposalCount() external view returns (uint256) {
        return proposals.length;
    }
}
