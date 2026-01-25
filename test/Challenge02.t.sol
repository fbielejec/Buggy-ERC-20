// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge02} from "../src/Challenge02.sol";

contract Challenge02Test is Test {
    Challenge02 public token;

    function setUp() public {
        token = new Challenge02("Token", "TKN", 18);
    }

    function test_RevertWhen_TransferFromInsufficientAllowance() public {
      address owner = address(0xABCD);
      token.mint(owner, 1e18);

      address robber = address(0xBADD);

      // robber set allowance and steals
      vm.prank(robber);
      vm.expectRevert("insufficient allowance");
      token.transferFrom(owner, robber, 1e18);
    }

}
