// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge06} from "../src/Challenge06.sol";

contract Challenge06Test is Test {

    Challenge06 public token;

    function setUp() public {
        token = new Challenge06();
        /* owner = address(0xBEEF); */
        /* token.transfer(owner, 1e18); */
    }

    function test_NonBlacklistedAddressCanTransfer() public {

      address banned = address(0xBADD);
      token.transfer(banned, 1e18);
      vm.prank(banned);
      token.approve(address (this), 1e18);

      // add banned account to blacklist
      token.addToBlacklist(banned);

      // send to the banned account
      vm.expectRevert("Sender or receiver blacklisted");
      token.transferFrom(banned, address (this), 1e18);
    }

}
