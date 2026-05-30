# Reverting Transactions

When a transaction reverts, all state changes in that call are undone and remaining gas is refunded.

## require

```solidity
require(msg.sender == owner, "Not the owner");
```

Good for input validation and access control. The string message helps with debugging.

## Custom Errors (0.8+)

```solidity
error NotOwner(address caller);

if (msg.sender != owner) revert NotOwner(msg.sender);
```

More gas-efficient than string messages. Identified by the first 4 bytes of the keccak256 hash of the error signature.

## assert

```solidity
assert(address(this).balance == 0);
```

Reserved for conditions that should never be false — logical invariants. If an assert fires, there is a bug.
Unlike require/revert, assert does not refund remaining gas.

## Modifiers

```solidity
modifier onlyOwner() {
    require(msg.sender == owner, "Not the owner");
    _;
}

function withdraw() external onlyOwner {
    // only owner reaches here
}
```

Modifiers run before (and optionally after) the function body. `_` marks where the function body runs.
