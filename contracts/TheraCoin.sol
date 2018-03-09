pragma solidity ^0.4.17;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract TotalSupply { function totalSupply() returns(uint) {} }
contract SimpleStorage { function get() returns(uint) {} function set(uint a) {} }

contract TheraCoin is StandardToken {
  string public name = 'TheraCoin-T1';
  string public symbol = 'THCT1';
  uint8 public decimals = 18;
  uint public INITIAL_SUPPLY = 50000;
  function TheraCoin() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
  function totalSupply(address addrTC) returns(uint) {
    TotalSupply supply = TotalSupply(addrTC);
    return supply.totalSupply();
  }
  function setFormData(address addrSS, uint data) {
    SimpleStorage store = SimpleStorage(addrSS);
    store.set(data);
  }
  function getFormData(address addrSS) returns(uint) {
    SimpleStorage store = SimpleStorage(addrSS);
    return store.get();
  }
}
