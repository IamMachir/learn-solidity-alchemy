# Learn Solidity — Alchemy University

**Course:** Learn Solidity · Alchemy University
**Platform:** https://university.alchemy.com/course/solidity
**Institution:** Adama Science and Technology University
**Department:** Electrical Engineering and Computer Science — Computer Science
**Course Code:** CSEg5304 — Introduction to Blockchain
**Semester:** May 2026

---

## About This Repository

This repository contains all work completed as part of the Learn Solidity laboratory assignment. It includes every exercise, project contract, course material, and progress screenshot from the full Alchemy University Learn Solidity course.

The course covers Solidity from the ground up — starting with basic data types and working through real-world smart contract projects like an Escrow and a Voting system.

---

## Repository Structure

```
├── course-materials/      Lesson notes and reference material for each topic
├── exercises/             All coding exercises completed during the course
│   ├── part1-basics/      Data types and functions
│   ├── part2-addresses/   Sending ether, reverting, calldata, escrow
│   ├── part3-references/  Arrays, structs, mappings
│   └── part4-applied/     Voting contract and inheritance
├── projects/              Complete smart contract projects
│   ├── Escrow.sol         Three-party escrow contract
│   └── Voting.sol         On-chain governance voting contract
├── screenshots/           Course progress and completion screenshots
├── resources/             External links and reference material
└── CONTRIBUTORS.md        Group members and contributions
```

---

## Course Completion

The full Learn Solidity course has been completed. All four parts are done with every section checked off, as shown in the screenshots folder.

**Topics covered:**

| Part | Topic |
|------|-------|
| 1 | Smart Contracts, Basic Data Types, Solidity Functions |
| 2 | Sending Ether, Reverting Transactions, Calldata, Escrow |
| 3 | Arrays, Structs, Mappings |
| 4 | Voting Contract, Inheritance |

---

## How to Run the Contracts

The contracts were written and tested using the Foundry framework as used throughout the Alchemy University course environment.

**Install Foundry:**
```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

**Compile a contract:**
```bash
forge build
```

**Run tests:**
```bash
forge test
```

**Deploy to a local testnet:**
```bash
anvil
forge create --rpc-url http://localhost:8545 src/Escrow.sol:Escrow
```

---

## Technologies Used

- Solidity ^0.8.20
- Foundry (forge, anvil)
- Alchemy University course platform
- Git / GitHub

---

## Team Members

This is a group laboratory project completed collaboratively by five members.

| Name | Student ID | Role |
|------|-----------|------|
| **Machir Tadesse Woldemariam** | UGE/27638/14 | Repository Lead |
| Abenezer Tewodros | UGE/27816/14 | Contributor |
| Efa Mirkana | UGE/27834/14 | Contributor |
| Musbah Rida | UGE/27831/14 | Contributor |
| Samuel Girma | UGE/27830/14 | Contributor |
| Seid Jemal | UGE/27827/14 | Contributor |

---

## Submission

This repository is submitted as part of the Laboratory Assignment for CSEg5304 — Introduction to Blockchain, May 2026.

Each group member has made public contributions to this repository as required by the assignment guidelines.
