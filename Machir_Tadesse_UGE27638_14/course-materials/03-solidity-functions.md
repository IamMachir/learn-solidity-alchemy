# Solidity Functions

## Constructor

```solidity
uint public x;
constructor(uint _x) {
    x = _x;
}
```

The constructor runs once at deployment. The underscore prefix on `_x` avoids variable shadowing.

## External vs Public

- `external` — can only be called from outside the contract. Cheaper gas for functions you won't call internally.
- `public` — can be called internally and externally. Required when you need both.

## View Functions

```solidity
function add(uint y) external view returns (uint) {
    return x + y;
}
```

`view` means the function reads state but never writes it. Calling a view function is free (no transaction needed).

## Pure Functions

```solidity
function double(uint val) external pure returns (uint) {
    return val * 2;
}
```

`pure` means no state access at all — just computation.

## Function Overloading

```solidity
function double(uint x) public pure returns (uint) {
    return x * 2;
}
function double(uint x, uint y) external pure returns (uint, uint) {
    return (x * 2, y * 2);
}
```

Same function name, different parameters. Solidity picks the right one based on the arguments passed.
