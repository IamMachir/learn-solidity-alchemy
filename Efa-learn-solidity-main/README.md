### Student Information

ADAMA SCIENCE AND TECHNOLOGY UNIVERSITY SCHOOL OF ELECTRICAL ENGINEERING 

   AND COMPUTING DEPARTMENT OF COMPUTER SCIENCE AND ENGINEERING


**COURSE**:- INTRODUCTION TO BLOCKCHAIN CSEG5304

**Name**: Efa Mirkana

**ID Number**: UGE/27834/14

**Department**: Computer Science and Engineering (CSE)

# Learn Solidity - Alchemy University

Welcome to the comprehensive repository for the **Alchemy University Solidity Course**. This project serves as a structured learning path, capturing the journey from foundational blockchain concepts to advanced smart contract development.

## Deep Project Structure

The repository is meticulously organized to facilitate progressive learning:

### 1. materials/
This section contains theoretical foundations.
- **Notes**: In-depth summaries of core Solidity concepts, including data types, memory management, and security patterns.
- **Presentations**: High-level conceptual overviews used during lectures, focusing on architectural patterns like Escrow and Voting models.

### 2. projects/
Real-world application implementations.
- **Escrow**: A multi-party contract demonstrating the "Arbiter" pattern, secure fund holding, and event-driven state changes.
- **Voting**: An on-chain governance model exploring complex data structures (structs) and access control (chairperson).

### 3. src/
The engine room of the course. Each subdirectory is a deep dive into a specific Solidity pillar:
- **Foundations**: Basic Data Types, Storage Variables, and Functions.
- **Ether Management**: Sending Ether and Reverting Transactions for robust security.
- **Advanced Structures**: Arrays, Structs, and Mappings (the bedrock of Solidity state).
- **Architecture**: Calldata optimization, Inheritance for code reuse, and Combined complex contracts.

### 4. resources/
A dedicated space for visual progress, screenshots, and external documentation links gathered throughout the course.

## How to Navigate
Start with the Basic Data Types and progress numerically through the `src/` directory. Each lesson's code is accompanied by its own deep explanation in the local `README.md`.


# Solidity Source Code - Learning Path

This directory serves as the core technical engine of the **learn-solidity** project. It contains a modular, step-by-step implementation of Solidity concepts, following the Alchemy University curriculum.

## Directory Structure & Deep Explanations

Each subdirectory is a focused "deep dive" into a specific pillar of smart contract development:

### 1. Foundations
- **01_BasicDataTypes/**: Understanding how the EVM handles primitives like `uint`, `int`, `bool`, and `string`.
- **02_SolidityFunctions/**: Mastering function visibility, state mutability (`pure`/`view`), and overloading.
- **03_StorageVariables/**: Exploring the permanent state of the blockchain and gas-efficient storage layout.

### 2. Value & Security
- **04_SendingEther/**: Implementing secure value transfers using the modern `call` pattern.
- **05_RevertingTransactions/**: Handling errors gracefully with `require`, `revert`, and `assert`.

### 3. Data Structures
- **08_Arrays/**: Managing collections of data in both storage and memory.
- **09_Structs/**: Creating custom data models for real-world entities.
- **10_Mappings/**: Implementing highly efficient key-value stores.

### 4. Advanced Architecture
- **06_Calldata/**: Optimizing external function calls and understanding ABI encoding.
- **12_Inheritance/**: Designing modular systems using `is`, `virtual`, and `override`.
- **combined/**: Integrating all concepts into a unified, complex smart contract system.

## Deep Insights: The Solidity Compilation Process

When you write code in these `.sol` files, several things happen behind the scenes:
1. **Compilation**: The Solidity compiler (`solc`) converts your human-readable code into **EVM Bytecode**.
2. **ABI Generation**: An **Application Binary Interface (ABI)** is created, which acts as a bridge for front-end applications to interact with the contract.
3. **Deployment**: The bytecode is sent in a transaction to the network, where it is assigned a permanent address.

## How to Use This Source Folder
For each module, first read the local `README.md` to understand the theory, then examine the `.sol` files to see the implementation. You can use the projects/ folder to see these concepts applied in larger, real-world scenarios.

## Course Progress

| Module # | Topic | Key Concepts Covered | Status |
| :--- | :--- | :--- | :--- |
| 01 | **Basic Data Types** | Booleans, Integers, Strings, Enums | ✅ Completed |
| 02 | **Solidity Functions** | Arguments, Visibility, Mutability, Overloading | ✅ Completed |
| 03 | **Storage Variables** | Persistence, Slot Packing, Gas Costs | ✅ Completed |
| 04 | **Sending Ether** | `receive`, `fallback`, `transfer`, `send`, `call` | ✅ Completed |
| 05 | **Reverting Transactions** | `require`, `revert`, `assert`, Custom Errors | ✅ Completed |
| 06 | **Calldata** | ABI Encoding, `msg.data`, Data Locations | ✅ Completed |
| 07 | **Escrow** | Trustless Exchange, Arbiter Pattern | ✅ Completed |
| 08 | **Arrays** | Fixed vs Dynamic, Storage vs Memory Operations | ✅ Completed |
| 09 | **Structs** | Custom Data Models, Initialization Patterns | ✅ Completed |
| 10 | **Mappings** | Key-Value Storage, Nested Mappings | ✅ Completed |
| 11 | **Voting** | Governance, Sybil Resistance, Proposals | ✅ Completed |
| 12 | **Inheritance** | Code Reuse, `virtual`, `override`, C3 Linearization | ✅ Completed |
| 13 | **Combined Concepts** | System Integration, Final Project Foundations | ✅ Completed |

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
├── screenshots/
│   ├── 01_BasicDataTypes_UnsignedIntegers.png
│   ├── ... (17_FinalMilestone.png)
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


---
## Course Link
[Alchemy University - Solidity Course](https://university.alchemy.com/course/solidity)
