// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge07} from "../src/Challenge07.sol";

contract Challenge07Test is Test {

    Challenge07 public token;

    function setUp() public {
        token = new Challenge07();
    }

    function test_onlyOwnrCanMint() public {

      /* address banned = address(0xBADD); */
      /* token.transfer(banned, 1e18); */
      /* vm.prank(banned); */
      /* token.approve(address (this), 1e18); */

      /* // add banned account to blacklist */
      /* token.addToBlacklist(banned); */

      /* // send to the banned account */
      /* vm.expectRevert("Sender or receiver blacklisted"); */
      /* token.transferFrom(banned, address (this), 1e18); */
    }

}
