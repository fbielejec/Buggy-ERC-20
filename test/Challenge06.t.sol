// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge05} from "../src/Challenge05.sol";

contract Challenge06Test is Test {

    Challenge06 public token;

    function setUp() public {
        token = new Challenge06();
    }

    function test_NonBlacklistedAddressCanTransfer() public {

    }

}
