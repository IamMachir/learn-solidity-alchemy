# Inheritance

Solidity contracts can inherit state variables and functions from other contracts.

## Basic Inheritance

```solidity
contract Ownable {
    address public owner;
    constructor() { owner = msg.sender; }
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }
}

contract MyContract is Ownable {
    // has owner, onlyOwner modifier
}
```

## Constructor Arguments

```solidity
contract Hero {
    uint public health;
    constructor(uint _health) { health = _health; }
}

contract Warrior is Hero(200) {}  // Warrior starts with 200 health
contract Mage is Hero(50) {}      // Mage starts with 50 health
```

## Virtual and Override

```solidity
contract Hero {
    function attack(Enemy e) public virtual { energy--; }
}

contract Warrior is Hero {
    function attack(Enemy e) public override {
        e.takeAttack(AttackTypes.Brawl);
        super.attack(e);  // also runs Hero's attack
    }
}
```

`virtual` — this function can be overridden by a derived contract.
`override` — this function replaces the parent's version.
`super` — call the parent's version of this function.

## Multiple Inheritance

```solidity
contract Collectible is Ownable, Transferable {}
```

Order matters: list the most base contract first. The compiler uses C3 linearisation.

## Abstract Contracts

An abstract contract has at least one unimplemented function. It cannot be deployed — only inherited.
