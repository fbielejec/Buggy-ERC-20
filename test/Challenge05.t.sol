// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge05} from "../src/Challenge05.sol";

contract Challenge05Test is Test {

    Challenge05 public token;

    function setUp() public {
        token = new Challenge05();
    }

    function test_ApprovedTransfer() public {

      address to = address(0xBADD);
      token.approve(address (this), 1e18);

      uint256 value = 1e18;
      uint256 balance_from_before = token.balanceOf(address (this));
      uint256 balance_to_before = token.balanceOf(to);

      token.transferFrom(address (this), to, 1e18);
      assertEq(token.balanceOf(address (this)), balance_from_before - value);
      assertEq(token.balanceOf(to), balance_to_before + value);

    }

}
