# Structs Presentation

## Slide 1: What are Structs?
- Custom data types that let you group related data.
- Essential for modeling complex objects like "Users", "Assets", or "Orders".

## Slide 2: Definition and Usage
- Declared with the `struct` keyword.
- Can contain any type, including other structs and arrays (but not themselves).

## Slide 3: Initialization
- Positional: `User(addr, name, score)`.
- Key-Value (Better): `User({addr: a, name: n, score: s})`.

## Slide 4: Structs in Storage
- When a struct is a state variable, it occupies consecutive storage slots.
- Packing rules apply here too! Order members from smallest to largest size to save gas.

## Slide 5: Memory vs Storage Structs
- Use `memory` for temporary struct instances in functions to avoid expensive storage writes.
