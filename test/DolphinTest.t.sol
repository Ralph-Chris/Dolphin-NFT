//SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {DeployDolphin} from "script/DeployDolphin.s.sol";
import {Dolphin} from "src/Dolphin.sol";
import {console} from "forge-std/console.sol";

contract TestDolphin is Test {
    DeployDolphin deployer;
    Dolphin dolphin;

    address public USER = makeAddr("USER");
    uint256 public constant BALANCE = 50 ether;

    function setUp() public {
        deployer = new DeployDolphin();
        vm.deal(USER, BALANCE);
        dolphin = deployer.run();
    }

    function testMintFunction() public {
        vm.prank(USER);
        dolphin.safeMint();
       address owner = dolphin.ownerOf(0);
        assertEq(owner, USER);
    }

    function testTokenUri() public {
        vm.prank(USER);
        dolphin.safeMint();
        dolphin.tokenURI(0);
        address owner = dolphin.ownerOf(0);
        assertEq(owner, USER);
    }
}
