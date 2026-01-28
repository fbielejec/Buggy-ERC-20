// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge10} from "../src/Challenge10.sol";

contract Challenge10Test is Test {

    Challenge10 public token;

    function setUp() public {
        token = new Challenge10();
    }

    function test_RevertWhen_NonOwnerTransfersOwnership() public {

      address baddy = address(0xBADD);

      vm.prank(baddy);
      vm.expectRevert();
      token.transferOwnership (baddy);
    }

}
