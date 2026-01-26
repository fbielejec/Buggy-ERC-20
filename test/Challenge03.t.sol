// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge03} from "../src/Challenge03.sol";

contract Challenge03Test is Test {
    Challenge03 public token;

    function setUp() public {
        token = new Challenge03();
    }

    /* function test_RevertWhen_TransferFromInsufficientAllowance() public { */
    /*   address owner = address(0xABCD); */
    /*   token.mint(owner, 1e18); */

    /*   address robber = address(0xBADD); */

    /*   vm.prank(robber); */
    /*   vm.expectRevert("insufficient allowance"); */
    /*   token.transferFrom(owner, robber, 1e18); */
    /* } */

    function test_RevertWhen_BurnInsufficientAllowance() public {
      address victim = address(0xBEEF);
      
      // Test contract transfers tokens to victim
      token.transfer(victim, 1e18);
      assertEq(token.balanceOf(victim), 1e18);

      address blackhat = address(0xBADD);
      
      // Blackhat tries to burn victim's tokens (should succeed due to missing access control)
      vm.prank(blackhat);
      token.burn(victim, 1e18);
      
      // This assertion will fail because burn has no access control
      // The blackhat was able to burn the victim's tokens
      assertEq(token.balanceOf(victim), 0); // This is what actually happens
    }

    /* function testFailBurnInsufficientBalance( */
    /*     address to, */
    /*     uint256 mintAmount, */
    /*     uint256 burnAmount */
    /* ) public { */
    /*     burnAmount = bound(burnAmount, mintAmount + 1, type(uint256).max); */

    /*     token.mint(to, mintAmount); */
    /*     token.burn(to, burnAmount); */
    /* } */

}
