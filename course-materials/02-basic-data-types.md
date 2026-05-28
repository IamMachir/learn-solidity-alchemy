# Basic Data Types

## Booleans

```solidity
bool public a = true;
bool public b = false;
```

Default value is `false`. Adding `public` creates a getter function automatically.

## Unsigned Integers

```solidity
uint8  public a = 100;    // 0 to 255
uint16 public b = 300;    // 0 to 65,535
uint256 public sum = a + b;
```

`uint` is short for `uint256`. The number after uint specifies bits reserved.
Since Solidity 0.8.x, overflow reverts instead of wrapping silently.

## Signed Integers

```solidity
int8 public a = 50;
int8 public b = -30;
int16 public difference = a - b;
```

`int8` range: -128 to 127. Both signed and unsigned cover the same total number of values.

## Strings and Bytes

```solidity
bytes32 public msg1 = "Hello World";
string  public msg2 = "A longer string that needs dynamic storage";
```

Use `bytes32` for short fixed strings — cheaper gas. Use `string` for longer text.
Long strings are often stored off-chain (e.g. IPFS) with only the hash on-chain.

## Enum

```solidity
enum Foods { Apple, Banana, Cherry, Pizza }
Foods public food1 = Foods.Apple;
```

Enums map named values to integers starting from 0. Much more readable than using raw numbers.
