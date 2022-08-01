// SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Aura is Ownable {
    uint8 public constant ATTRIBUTE_COUNT = 20;
    uint8 public constant MAX_WHITELIST_COUNT = 10;

    mapping(address => uint256[ATTRIBUTE_COUNT]) public attributes;
    mapping(address => mapping(uint8 => bool)) public attributeWhitelist; //maps an address to a map of allowed attributes which that address can change

    function changeAddressAllowedToManipulateAttribute(address target, uint8 attribute, bool newValue) external onlyOwner {
        attributeWhitelist[target][attribute] = newValue;
    }

    function setAttribute(address user, uint8 attribute, uint256 newValue) external {
        require(attributeWhitelist[msg.sender][attribute] == true, "Sender not allowed to change this attribute");

        attributes[user][attribute] = newValue;
    }
}
