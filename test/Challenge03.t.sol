// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge03} from "../src/Challenge03.sol";

contract Challenge03Test is Test {
    Challenge03 public token;

    function setUp() public {
        token = new Challenge03();
    }

    function test_RevertWhen_BurnInsufficientAllowance() public {
      address victim = address(0xBEEF);

      // Test contract transfers tokens to victim
      token.transfer(victim, 1e18);
      assertEq(token.balanceOf(victim), 1e18);

      address blackhat = address(0xBADD);

      // The blackhat is not able to burn the victim's tokens
      vm.prank(blackhat);
      vm.expectRevert("Challenge3: insufficient allowance");
      token.burn(victim, 1e18);

      assertEq(token.balanceOf(victim), 1e18);
    }

}
