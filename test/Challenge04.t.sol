// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge04} from "../src/Challenge04.sol";

contract Challenge04Test is Test {
    Challenge04 public token;

    function setUp() public {
        token = new Challenge04();
    }

    function test_TransferFromRevertWhen_Paused() public {
      token.approve (address(this), 1e18);
      token.pause ();
      vm.expectRevert("Challenge4: transfers paused");
      token.transferFrom(address(this), address (0xBEEF), 1e18);
    }

}
