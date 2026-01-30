// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge17} from "../src/Challenge17.sol";

contract Challenge17Test is Test {

    Challenge17 public token;

    function setUp() public {
        token = new Challenge17();
    }

    function test_OwnerWithBalanceCanTransfer() public {
      uint256 value = 1e18;

      assertGt (token.balanceOf (address (this)), value);

      address to = address (0xCAFFE);
      token.transfer (to, value);
    }

}
