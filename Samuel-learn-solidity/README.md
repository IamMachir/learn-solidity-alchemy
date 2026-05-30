### Student Information

**ADAMA SCIENCE AND TECHNOLOGY UNIVERSITY**

**SCHOOL OF ELECTRICAL ENGINEERING AND COMPUTING**

**DEPARTMENT OF COMPUTER SCIENCE AND ENGINEERING**

---

**COURSE**: INTRODUCTION TO BLOCKCHAIN (CSEG5304)

**NAME**: Samuel Girma

**ID**: UGE/27830/14

**DEPARTMENT**: Computer Science and Engineering (CSE)

---

# 🛡️ Mastering Solidity: An Alchemy University Odyssey

Welcome to the definitive repository for the **Alchemy University Solidity Curriculum**. This workspace is not just a collection of code; it is a meticulously crafted technical journal documenting the transition from decentralized curiousity to professional smart contract engineering.

## 🏗️ Architectural Overview

The repository is architected to reflect a logical progression through the Ethereum Virtual Machine (EVM) landscape:

### 📘 1. Theoretical Foundations (`materials/`)
Where abstract concepts take concrete form.
- **Academic Notes**: Granular dissections of Solidity's internal mechanics—from the nuances of the `SSTORE` opcode to advanced security patterns like Reentrancy Guards.
- **Technical Presentations**: Curated slide-decks designed for conceptual clarity, bridging the gap between high-level logic and low-level implementation.

### 🚀 2. Production-Grade Projects (`projects/`)
Synthesizing individual concepts into robust, real-world applications.
- **Trustless Escrow**: A sophisticated implementation of the Arbiter pattern, showcasing secure Ether custody and event-driven architectures.
- **On-Chain Governance**: A comprehensive Voting model exploring complex data orchestration and Sybil-resistant access control.

### ⚙️ 3. The Core Engine (`src/`)
A modular laboratory where each subdirectory isolates and masters a specific pillar of the Solidity language:
- **Foundations**: Data primitives, storage layouts, and function dispatching.
- **Value Security**: Mastering the `call` pattern and robust error handling frameworks.
- **State Management**: Leveraging Arrays, Structs, and Mappings for efficient on-chain data storage.
- **Advanced Engineering**: Calldata optimization, complex Inheritance hierarchies, and multi-contract systems.

### 4. Knowledge Base (`resources/`)
A central hub for documentation and technical references.

### 🖼️ 5. Visual Milestones (`Screenshots/`)
A dedicated gallery of course progress, exercises, and completion certificates, organized by chapter for easy reference.

---

## 🧭 Navigational Guide
To maximize the pedagogical value of this repository, it is recommended to follow the numerical sequence within the `src/` directory. Each module represents a distinct milestone in the quest for Solidity mastery.

## 🧠 Deep Technical Insights: The Lifecycle of a Smart Contract

Beyond the syntax, this repository explores the underlying lifecycle that powers the decentralized web:
1. **Source Translation**: How `solc` transforms human intent into optimized EVM Opcodes.
2. **The ABI Interface**: Constructing the cryptographic bridge between traditional software and immutable logic.
3. **Network Finality**: The process of deploying bytecode to a permanent on-chain address, ensuring trustless execution for eternity.

---

## 📈 Learning Roadmap & Status

| Milestone | Technical Focus | Core Competencies | Status |
| :--- | :--- | :--- | :--- |
| 01 | **Primitive Mastery** | Integers, Booleans, Enums, Strings | ✅ Certified |
| 02 | **Logic Dispatch** | Visibility, Mutability, Overloading | ✅ Certified |
| 03 | **State Persistence** | Storage Slots, Gas Optimization | ✅ Certified |
| 04 | **Value Transfer** | Modern `call` pattern, Payable logic | ✅ Certified |
| 05 | **Resilient Design** | Require/Revert/Assert, Custom Errors | ✅ Certified |
| 06 | **Data Optimization** | Calldata, ABI Encoding, `msg.data` | ✅ Certified |
| 07 | **Escrow Systems** | Trustless Custody, Arbiter Logic | ✅ Certified |
| 08 | **Collection Logic** | Dynamic vs Fixed Storage Arrays | ✅ Certified |
| 09 | **Custom Models** | Struct Architectures, Initializers | ✅ Certified |
| 10 | **Key-Value Stores** | Efficient Mapping Lookups, Nesting | ✅ Certified |
| 11 | **Decentralized Voting** | Governance, Access Control | ✅ Certified |
| 12 | **System Hierarchy** | Inheritance, Virtual/Override, C3 | ✅ Certified |
| 13 | **Integration** | Complex Multi-Contract Orchestration | ✅ Certified |

---
## Project Folder Structure

```text
learn-solidity/
├── materials/
│   ├── notes/
│   │   ├── 01_BasicDataTypes.md
│   │   ├── 02_SolidityFunctions.md
│   │   ├── 03_StorageVariables.md
│   │   ├── 04_SendingEther.md
│   │   ├── 05_RevertingTransactions.md
│   │   ├── 06_Calldata.md
│   │   ├── 07_Escrow.md
│   │   ├── 08_Arrays.md
│   │   ├── 09_Structs.md
│   │   ├── 10_Mappings.md
│   │   ├── 11_Voting.md
│   │   └── 12_Inheritance.md
│   ├── presentations/
│   │   ├── 1b-storage-variables.md
│   │   ├── 1c-functions.md
│   │   ├── 2-sending-ether.md
│   │   ├── 5-escrow.md
│   │   ├── 7-structs.md
│   │   ├── 9-voting.md
│   │   └── 10-inheritance.md
│   └── README.md
├── projects/
│   ├── Escrow.sol
│   ├── Voting.sol
│   └── README.md
├── resources/
│   └── README.md
├── Screenshots/
│   ├── CH01_01_Booleans.png
│   ├── CH01_02_UnsignedIntegers.png
│   ├── ... (Advanced Chapters)
│   └── README.md
└── src/
    ├── 01_BasicDataTypes/
    │   ├── 01_Booleans.sol
    │   ├── 02_UnsignedIntegers.sol
    │   ├── 03_SignedIntegers.sol
    │   ├── 04_Strings.sol
    │   ├── 05_Enum.sol
    │   └── README.md
    ├── 02_SolidityFunctions/
    │   ├── 01_Arguments.sol
    │   ├── 02_Increment.sol
    │   ├── 03_ViewAddition.sol
    │   ├── 04_ConsoleLog.sol
    │   ├── 05_PureDouble.sol
    │   ├── 06_DoubleOverload.sol
    │   └── README.md
    ├── 03_StorageVariables/
    │   ├── StorageVariables.sol
    │   └── README.md
    ├── 04_SendingEther/
    │   ├── SendingEther.sol
    │   └── README.md
    ├── 05_RevertingTransactions/
    │   ├── RevertingTransactions.sol
    │   └── README.md
    ├── 06_Calldata/
    │   ├── CalldataDemo.sol
    │   └── README.md
    ├── 07_Escrow/
    │   ├── Escrow.sol
    │   └── README.md
    ├── 08_Arrays/
    │   ├── Arrays.sol
    │   └── README.md
    ├── 09_Structs/
    │   ├── Structs.sol
    │   └── README.md
    ├── 10_Mappings/
    │   ├── Mappings.sol
    │   └── README.md
    ├── 11_Voting/
    │   ├── Voting.sol
    │   └── README.md
    ├── 12_Inheritance/
    │   ├── Inheritance.sol
    │   └── README.md
    ├── combined/
    │   └── Contract.sol
    └── README.md
```

## 🔗 External References
- [Official Alchemy University Portal](https://university.alchemy.com/course/solidity)
- [Solidity Documentation](https://docs.soliditylang.org/)
