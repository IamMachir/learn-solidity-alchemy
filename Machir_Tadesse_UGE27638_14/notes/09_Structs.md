# Notes — Structs

- Structs bundle related variables under one type name
- Access fields with dot notation: `person.name`, `person.age`
- Storage reference (`Person storage p = people[i]`) modifies the original
- Memory copy (`Person memory p = people[i]`) creates a local copy
- Structs can contain other structs, arrays, and mappings
- Commonly used for: User, Product, Proposal, Agreement
