// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    uint[] public evenNumbers;

    // Sum of a fixed-size array
    function sumFixed(uint[5] calldata numbers) external pure returns (uint) {
        uint total = 0;
        for (uint i = 0; i < 5; i++) {
            total += numbers[i];
        }
        return total;
    }

    // Sum of a dynamic array
    function sumDynamic(uint[] calldata numbers) external pure returns (uint) {
        uint total = 0;
        for (uint i = 0; i < numbers.length; i++) {
            total += numbers[i];
        }
        return total;
    }

    // Filter even numbers to storage
    function filterEvenToStorage(uint[] calldata numbers) external {
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] % 2 == 0) {
                evenNumbers.push(numbers[i]);
            }
        }
    }

    // Filter even numbers to memory and return
    function filterEvenToMemory(uint[] calldata numbers) external pure returns (uint[] memory) {
        uint count = 0;
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] % 2 == 0) count++;
        }
        uint[] memory result = new uint[](count);
        uint idx = 0;
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] % 2 == 0) {
                result[idx] = numbers[i];
                idx++;
            }
        }
        return result;
    }
}
