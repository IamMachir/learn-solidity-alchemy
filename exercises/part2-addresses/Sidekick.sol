// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IHero {
    function alert() external;
}

contract Sidekick {
    // Call alert() on the hero using the interface
    function sendAlert(address hero) external {
        IHero(hero).alert();
    }

    // Call alert() manually using abi.encodeWithSignature
    function sendAlertManual(address hero) external {
        (bool success, ) = hero.call(abi.encodeWithSignature("alert()"));
        require(success, "Call failed");
    }

    // Call alert(uint256,bool) with arguments
    function sendAlertWithArgs(address hero, uint256 enemies, bool armed) external {
        bytes memory payload = abi.encodeWithSignature("alert(uint256,bool)", enemies, armed);
        (bool success, ) = hero.call(payload);
        require(success, "Call failed");
    }

    // Relay arbitrary calldata
    function relay(address hero, bytes calldata data) external {
        (bool success, ) = hero.call(data);
        require(success, "Relay failed");
    }

    // Trigger hero's fallback function
    function makeContact(address hero) external {
        (bool success, ) = hero.call(abi.encodePacked(uint8(0x11)));
        require(success, "Call failed");
    }
}
