var TheraCoin = artifacts.require("./TheraCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(TheraCoin);
};
