# Projects

Two complete smart contract projects built during the Alchemy University Learn Solidity course.

## Escrow.sol

A three-party escrow that holds ETH until a trusted arbiter approves the transfer to the beneficiary.

Deploy:
```bash
forge create --rpc-url http://localhost:8545 \
  src/Escrow.sol:Escrow \
  --constructor-args <arbiterAddress> <beneficiaryAddress> \
  --value 1ether
```

## Voting.sol

An on-chain governance contract. Members create proposals with calldata targeting any contract. When 10 yes votes are reached, the proposal executes automatically.

Deploy:
```bash
forge create --rpc-url http://localhost:8545 \
  src/Voting.sol:Voting \
  --constructor-args "[<member1>, <member2>]"
```
