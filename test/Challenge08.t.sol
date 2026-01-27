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

      token.burn(1e18);

      assertEq(token.totalSupply(), supply_before - value);
    }

}
