// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {Core} from "../src/Core.sol";
import {MockUSDC} from "../src/MockUSDC.sol";
import {Strategy} from "../src/Strategy.sol";
import {console} from "forge-std/console.sol";

contract DeployScript is Script {
    function run() external {
        // Start broadcasting the transaction
        vm.startBroadcast();

        MockUSDC usdc = new MockUSDC();

        // Deploy the contract
        Core myContract = new Core(address(usdc));

        console.log("Contract deployed at:", address(myContract));

        // Stop broadcasting the transaction
        vm.stopBroadcast();
    }
}
