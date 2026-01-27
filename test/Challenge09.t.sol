// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge09} from "../src/Challenge09.sol";

contract Challenge09Test is Test {

    Challenge09 public token;

    function setUp() public {
        token = new Challenge09();
    }

    function test_() public {

      /* address baddy = address(0xBADD); */
      /* token.transfer (baddy, 1e18); */

      /* vm.prank(baddy); */
      /* token.burn(10e18); */
    }

}
