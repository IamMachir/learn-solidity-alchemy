// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./Enemy.sol";

abstract contract Hero {
    uint public health;
    uint public energy = 10;

    constructor(uint _health) {
        health = _health;
    }

    enum AttackTypes { Brawl, Spell }

    function takeDamage(uint damage) public {
        health -= damage;
    }

    function attack(Enemy) public virtual {
        energy--;
    }
}
