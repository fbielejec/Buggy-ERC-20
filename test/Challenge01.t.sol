// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge01} from "../src/Challenge01.sol";

contract Challenge01Test is Test {
    Challenge01 public token;

    function setUp() public {
        token = new Challenge01("Token", "TKN");
    }

    function testTransfer() public {

      address to = address(0xBEEF);

      uint256 value = 1e18;
      uint256 balance_from_before = token.balanceOf(address (this));
      uint256 balance_to_before = token.balanceOf(to);

      token.transfer(to, value);

      assertEq(token.balanceOf(address (this)), balance_from_before - value);
      assertEq(token.balanceOf(to), balance_to_before + value);
    }
}
