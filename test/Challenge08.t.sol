// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge08} from "../src/Challenge08.sol";

contract Challenge08Test is Test {

    Challenge08 public token;

    function setUp() public {
        token = new Challenge08();
    }

    function test_BurnDecreasesTotalSupply() public {
      uint256 supply_before = token.totalSupply();
      uint256 value = 1e18;

      token.burn(type(uint256).max);

      assertEq(token.totalSupply(), supply_before - value);
    }

    function test_RevertWhen_BurnExceedsBalance() public {
        // Get the current balance of the test contract
        uint256 currentBalance = token.balanceOf(address(this));
        
        // Try to burn more than the available balance
        uint256 excessiveAmount = currentBalance + 1e18;
        
        // This should revert because we're trying to burn more than we have
        vm.expectRevert();
        token.burn(excessiveAmount);
    }

    function test_RevertWhen_BurnFromEmptyAccount() public {
        // Create a new address with zero balance
        address emptyAccount = address(0xDEAD);
        
        // Verify the account has no tokens
        assertEq(token.balanceOf(emptyAccount), 0);
        
        // Try to burn tokens from an account with zero balance
        vm.prank(emptyAccount);
        vm.expectRevert();
        token.burn(1e18);
    }

}
