// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockUSDC is ERC20 {
    constructor() ERC20("Mock USDC", "USDC") {
        _mint(msg.sender, 1000000 * 10 ** decimals()); // Mint 1,000,000 USDC to the deployer
    }

    function decimals() public pure override returns (uint8) {
        return 6;
    }
}