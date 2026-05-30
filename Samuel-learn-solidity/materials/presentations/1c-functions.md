# Solidity Functions Presentation

## Slide 1: Function Anatomy
- The building blocks of contract logic.
- Syntax: `function name(params) visibility mutability returns(types)`.

## Slide 2: Visibility Modifiers
- **Public**: Anyone can call.
- **Private**: Only this contract can call.
- **Internal**: This contract and children can call.
- **External**: Only external calls (gas efficient for large inputs).

## Slide 3: Mutability Modifiers
- **View**: Reads from state, doesn't change it.
- **Pure**: Neither reads nor changes state (math/utility).
- **Payable**: Can receive Ether.

## Slide 4: Return Values
- Functions can return multiple values.
- You can name the return variables in the signature for better readability.

## Slide 5: Best Practices
- Keep functions small and focused.
- Use the correct visibility to minimize the attack surface.
- Always validate inputs with `require`.
