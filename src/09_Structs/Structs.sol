// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Structs
 * @notice Alchemy University — Learn Solidity | Unit 9
 * @dev Structs group related variables under a single named type.
 *      They can live in storage (persistent), memory (temporary),
 *      or calldata (read-only input). Nested structs and struct arrays
 *      are common patterns in real-world contracts.
 */
contract Structs {

    struct Person {
        string name;
        uint256 age;
        address wallet;
        bool    isActive;
    }

    // Array of structs
    Person[] public people;

    // Mapping from address to struct
    mapping(address => Person) public personByAddress;

    // Add a person
    function addPerson(string calldata _name, uint256 _age) external {
        Person memory newPerson = Person({
            name:     _name,
            age:      _age,
            wallet:   msg.sender,
            isActive: true
        });
        people.push(newPerson);
        personByAddress[msg.sender] = newPerson;
    }

    // Update age — using storage reference (modifies original directly)
    function updateAge(uint256 index, uint256 newAge) external {
        require(index < people.length, "Index out of bounds");
        Person storage p = people[index]; // storage reference — no copy
        p.age = newAge;                   // directly modifies blockchain state
    }

    function getPerson(uint256 index) external view returns (Person memory) {
        require(index < people.length, "Index out of bounds");
        return people[index];
    }

    function totalPeople() external view returns (uint256) {
        return people.length;
    }
}
