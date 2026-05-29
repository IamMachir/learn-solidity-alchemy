# Presentation: Functions

Defining the entry points for your smart contracts.

## Key Concepts
- **Visibility Modifiers**: Choosing who can call your code (`public`, `private`, `internal`, `external`).
- **State Mutability**: Communicating to the EVM and users if a function changes state (`view`, `pure`).
- **Function Selectors**: How the EVM routes transactions to the correct function.

## Architectural Insights
1. **Security First**: Default to `internal` or `private` and only expose what is absolutely necessary.
2. **External vs Public**: Use `external` for functions that take large arrays as input to avoid copying them to memory.
3. **Naming Conventions**: Use `_name` for internal/private functions to distinguish them from public entry points.
