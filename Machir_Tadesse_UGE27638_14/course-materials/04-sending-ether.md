# Sending Ether

## Message Globals

| Global | Type | Description |
|--------|------|-------------|
| `msg.sender` | address | Who made this call |
| `msg.value` | uint | Wei sent with this call |
| `msg.data` | bytes | Complete calldata |
| `msg.sig` | bytes4 | First 4 bytes — function selector |

## Receiving Ether

```solidity
receive() external payable {
    // triggered when ETH sent with no calldata
}

fallback() external payable {
    // triggered when calldata doesn't match any function
}
```

A function must be marked `payable` to accept ether.

## Sending Ether from a Contract

```solidity
(bool sent, ) = recipient.call{value: amount}("");
require(sent, "Transfer failed");
```

Use `.call{value}()` — it forwards all available gas and is the recommended approach.
Avoid `.transfer()` and `.send()` as they forward only 2300 gas which breaks with some contracts.

## Contract Balance

```solidity
address(this).balance  // current ETH balance of this contract
```
