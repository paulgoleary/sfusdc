// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/MockCoin.sol";
import "../src/SFUSDCv1.sol";

contract SFUSDCv1Test is Test {
    MockCoin public mockCoin;
    SFUSDCv1 public testCoin;

    function setUp() public {
        mockCoin = new MockCoin();
        testCoin = new SFUSDCv1(mockCoin);
    }
}
