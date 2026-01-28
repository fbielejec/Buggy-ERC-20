// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge14} from "../src/Challenge14.sol";

contract Challenge14Test is Test {

    Challenge14 public token;

    function setUp() public {
        token = new Challenge14("TOKEN", "TKN", 18);
    }

    function test_revertsWhen_NotEnoughAllowance() public {

      address baddy = address(0xBADD);
      uint256 allowance = 1e18;
      uint256 more_than_allowance = 10e18;

      token.approve (baddy, allowance);

      vm.prank(baddy);
      vm.expectRevert ();
      token.transferFrom (address (this), baddy, more_than_allowance);
    }

}
