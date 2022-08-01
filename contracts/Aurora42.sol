// SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

contract Aurora42 is ERC20, ERC20Burnable, ERC20Permit {
    address advisorsVault = address(0);
    address foundationVault = address(0);
    address treasuryVault = address(0);
    address communityMultisig = address(0);
    address foundersVault = address(0);
    address stakingVault = address(0);
    address seedVault = address(0);
    address privateRound1Vault = address(0);
    address privateRound2Vault = address(0);
    address publicSaleVault = address(0);
    address liquidityMultisig = address(0); //Corporate multisig

    constructor() ERC20("Aurora 42", "A42") ERC20Permit("Aurora 42") {
        _mint(advisorsVault, 700_000_000 ether);
        _mint(foundationVault, 2_200_000_000 ether);
        _mint(treasuryVault, 900_000_000 ether);
        _mint(communityMultisig, 500_000_000 ether);
        _mint(foundersVault, 1_800_000_000 ether);
        _mint(stakingVault, 1_000_000_000 ether);
        _mint(seedVault, 400_000_000 ether);
        _mint(privateRound1Vault, 250_000_000 ether);
        _mint(privateRound2Vault, 350_000_000 ether);
        _mint(publicSaleVault, 500_000_000 ether);
        _mint(liquidityMultisig, 400_000_000 ether);
    }
}
