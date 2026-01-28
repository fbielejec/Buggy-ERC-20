// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge11} from "../src/Challenge11.sol";

contract Challenge11Test is Test {

    Challenge11 public token;

    function setUp() public {
        token = new Challenge11();
    }

    function test_TransferFromDecreasesSpenderAllowance() public {

      address baddy = address(0xBADD);

      uint256 allowance_before = 10e18;
      uint256 value = 1e18;

      token.approve (baddy, allowance_before);

      vm.prank(baddy);
      token.transferFrom (address (this), baddy, value);

      assertEq (token.allowance (address (this), baddy), allowance_before - value);
    }

}
