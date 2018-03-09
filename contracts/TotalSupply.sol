
pragma solidity ^0.4.17;

/*
 *  About: Allows storage of number that is accessible to anyone.
 *    Previous numbers generated are stored in history of the blockchain.
 *
 *  Functionality: Declare storeData as state variable of unsigned integer of 256 bits
 *    for storage in database. In Ethereum the owning Contract functions
 *    such as `get` and `set` are used to query and modify the database.
 */
contract  TotalSupply {
  function totalSupply() constant returns (uint256 supply) {}
}
