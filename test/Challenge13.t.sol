// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge13} from "../src/Challenge13.sol";

contract Challenge13Test is Test {

    Challenge13 public token;

    function setUp() public {
        token = new Challenge13("TOKEN", "TKN", 18);
    }

    function test_GivingSpendAllowanceWorks() public {

      address spender = address(0xCAFFE);
      uint256 value = 1e18;

      token.approve (spender, value);
      assertEq (token.allowance (address (this), spender), value);
    }

}
