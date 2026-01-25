// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge01} from "../src/Challenge01.sol";

contract Challenge1Test is Test {
    Challenge01 public token;

    function setUp() public {
        token = new Challenge01("Token", "TKN");
    }

    function testTransfer() public {
        token.mint(address(this), 1e18);

        assertTrue(token.transfer(address(0xBEEF), 1e18));
        assertEq(token.totalSupply(), 1e18);

        assertEq(token.balanceOf(address(this)), 0);
        assertEq(token.balanceOf(address(0xBEEF)), 1e18);
    }
}
