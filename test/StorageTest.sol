pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/TheraCoin.sol";

contract StorageTest {

  function testStoresAndRetrievesValue() {
    TheraCoin thc = TheraCoin(DeployedAddresses.TheraCoin());

    thc.setFormData(DeployedAddresses.SimpleStorage(), 0);

    uint expected = 0;
    uint actual = thc.getFormData(DeployedAddresses.SimpleStorage());

    Assert.equal(actual, expected, "It should store value 0.");
  }

}
