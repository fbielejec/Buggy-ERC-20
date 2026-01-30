// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge15} from "../src/Challenge15.sol";

contract Challenge15Test is Test {

    function test_MintIncreasesBalance() public {
      Challenge15 token = new Challenge15("TOKEN", "TKN", 18);
      assertGt (token.balanceOf (address (this)),0);
    }

}
