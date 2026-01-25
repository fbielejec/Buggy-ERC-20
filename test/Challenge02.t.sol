// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge02} from "../src/Challenge02.sol";

contract Challenge02Test is Test {
    Challenge02 public token;

    function setUp() public {
        token = new Challenge02("Token", "TKN", 18);
    }

    /* function testTransfer() public { */
    /*     token.mint(address(this), 1e18); */

    /*     assertTrue(token.transfer(address(0xBEEF), 1e18)); */
    /*     assertEq(token.totalSupply(), 1e18); */

    /*     assertEq(token.balanceOf(address(this)), 0); */
    /*     assertEq(token.balanceOf(address(0xBEEF)), 1e18); */
    /* } */

// test transferFrom below approval


}
