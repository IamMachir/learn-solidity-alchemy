# Presentation: Structs

Building complex data models for real-world applications.

## Key Concepts
- **Custom Types**: Beyond basic primitives, how to model entities like "User" or "Asset".
- **Data Locality**: How structs help keep related data together in storage.
- **Initialization Patterns**: The different ways to construct a struct in Solidity.

## Architectural Insights
1. **Memory vs Storage Pointers**: Understanding that assigning a storage struct to a `storage` variable creates a reference, not a copy.
2. **Nesting Structs**: Creating hierarchies of data (e.g., a "Company" struct containing an array of "Employee" structs).
3. **Optimizing Storage Layout**: Ordering struct members to pack them into fewer 32-byte slots, potentially saving 20,000+ gas per write.
