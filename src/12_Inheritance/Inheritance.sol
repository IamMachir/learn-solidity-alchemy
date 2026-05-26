// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Inheritance
 * @notice Alchemy University — Learn Solidity | Unit 12
 * @dev Demonstrates inheritance, modifiers, virtual/override, and super.
 *      Ownable is a base contract providing onlyOwner access control —
 *      the same pattern used by OpenZeppelin's Ownable.sol.
 */

// ── Base contract ─────────────────────────────────────────────────────
contract Ownable {
    address public owner;

    error NotOwner(address caller);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        if (msg.sender != owner) revert NotOwner(msg.sender);
        _;
    }

    // virtual — child contracts can override this
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Zero address");
        owner = newOwner;
    }
}

// ── Child contract ────────────────────────────────────────────────────
contract MyContract is Ownable {

    uint256 public importantValue;
    bool    public isLocked;

    event ValueUpdated(uint256 oldValue, uint256 newValue);
    event Locked();

    // Inherits onlyOwner modifier from Ownable
    function setImportantValue(uint256 _value) external onlyOwner {
        emit ValueUpdated(importantValue, _value);
        importantValue = _value;
    }

    function lock() external onlyOwner {
        isLocked = true;
        emit Locked();
    }

    // override — extends parent behaviour with extra check
    function transferOwnership(address newOwner) public override onlyOwner {
        require(!isLocked, "Contract is locked");
        super.transferOwnership(newOwner); // call parent logic
    }
}

// ── Multi-inheritance example ─────────────────────────────────────────
contract Pausable is Ownable {
    bool public paused;

    error ContractPaused();

    modifier whenNotPaused() {
        if (paused) revert ContractPaused();
        _;
    }

    function pause()   external onlyOwner { paused = true;  }
    function unpause() external onlyOwner { paused = false; }
}
