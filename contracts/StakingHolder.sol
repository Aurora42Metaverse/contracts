// SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract StakingHolder {
    uint256 public a42PerSecond = 31.709791983764586504 ether; // 1,000,000,000 a42 / (365 days * 24h * 60min * 60s)
    uint256 public lastPayout;
    uint256 public constant TOTAL_REWARDS = 1_000_000_000 ether;

    address stakingContract = address(0);
    IERC20 public a42 = IERC20(0x0000000000000000000000000000000000000000);

    constructor() {
        lastPayout = block.timestamp;
    }

    function claim() external {
        uint256 elapsedSeconds = block.timestamp - lastPayout;

        a42.transfer(stakingContract, elapsedSeconds * a42PerSecond);

        lastPayout = block.timestamp;
    }
}
