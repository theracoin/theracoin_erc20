pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/TheraCoin.sol";

contract TotalSupplyTest {

  function testTotalSupply() {
    TheraCoin thc = TheraCoin(DeployedAddresses.TheraCoin());

    uint actual = thc.totalSupply(DeployedAddresses.TheraCoin());

    uint expected = 50000;

    Assert.equal(actual, expected, "It should have a total supply of 100.");
  }

}
