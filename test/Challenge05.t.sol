// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Challenge05} from "../src/Challenge05.sol";

contract Challenge05Test is Test {

    function test_TransferFromRevertWhen_Paused() public {
      vm.expectEmit();
      emit Challenge05.Transfer(address(this), address(this), 1000000 * 10 ** 18);
      new Challenge05();
    }

}
