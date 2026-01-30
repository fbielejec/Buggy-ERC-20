// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge16} from "../src/Challenge16.sol";

contract Challenge16Test is Test {

    Challenge16 public token;

    function setUp() public {
        token = new Challenge16();
    }

    function test_ApprovalIncreasesAllowance() public {
      address spender = address (0xCAFFE);

      token.approve (spender, 1e18);
      assertEq (1e18, token.allowance (address (this), spender));
    }

}
