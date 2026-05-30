# Smart Contracts

A smart contract is a program stored on the blockchain. It runs exactly as written — no downtime, no interference.

## How Communication Works

When an Externally Owned Account (EOA) wants to interact with a contract, it sends a transaction. That transaction includes:
- The target contract address
- Calldata (the function to call + arguments)
- Optional: ether to send

Every account on the EVM has an address and a balance. Contract accounts also store their bytecode and internal storage.

## Gas

Every operation on the EVM costs gas. Simple operations like ADD cost a fixed amount. Storage writes (SSTORE) are more expensive because they increase what every node in the network has to store.

## Useful Links

- EVM opcodes reference: https://www.evm.codes/
- Foundry docs: https://book.getfoundry.sh/
- Course presentations: https://github.com/alchemyplatform/learn-solidity-presentations
