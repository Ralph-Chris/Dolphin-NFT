//SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {Dolphin} from "src/Dolphin.sol";

contract DeployDolphin is Script {
    string private dolphinUrl =
        "https://gateway.pinata.cloud/ipfs/bafkreifhqohqn24vlxuixa6ctvl7ahzrviz3wf3kkyiyagi2whfw5pcfs4";

    function run() public returns (Dolphin) {
        vm.startBroadcast();
        Dolphin dolphin = new Dolphin(dolphinUrl);
        vm.stopBroadcast();
        return dolphin;
    }
}
