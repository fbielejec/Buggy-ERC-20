// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge12} from "../src/Challenge12.sol";

contract Challenge12Test is Test {

    Challenge12 public token;

    function setUp() public {
        token = new Challenge12("TOKEN", "TKN", 18);
    }

    function test_GiftIncreasesSupply() public {

      address baddy = address(0xBADD);

      uint256 supply_before = 10e18;
      uint256 value = 1e18;

      token.gift (baddy, value);
      assertEq (token.totalSupply (), supply_before + value);
    }

}
