// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge07} from "../src/Challenge07.sol";

contract Challenge07Test is Test {

    Challenge07 public token;

    function setUp() public {
        token = new Challenge07();
    }

    function test_onlyOwnerCanMint() public {

      address robber = address(0xBADD);

      vm.prank(robber);
      vm.expectRevert("Unauthorized()");
      token.mint(address (robber), 1e18);
    }

}
