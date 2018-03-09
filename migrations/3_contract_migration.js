var SimpleStorage = artifacts.require("./SimpleStorage.sol");
var TotalSupply = artifacts.require("./TotalSupply.sol");

module.exports = function(deployer) {
  deployer.deploy(SimpleStorage);
  deployer.deploy(TotalSupply);
};

