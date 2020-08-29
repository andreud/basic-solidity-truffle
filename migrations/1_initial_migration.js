const Migrations = artifacts.require("Migrations");

const Counter = artifacts.require("Counter");
const DataTypesOne = artifacts.require("DataTypesOne"); // ints, stings, structs
const DataTypesTwo = artifacts.require("DataTypesTwo");// arrays
const DataTypesThree = artifacts.require("DataTypesThree");// mappings
const ControlFlow = artifacts.require("ControlFlow");
const HotelRoom = artifacts.require("HotelRoom");
const MultiContracts = artifacts.require("MultiContracts");

module.exports = function (deployer) {
  deployer.deploy(Migrations);

  //deployer.deploy(Counter);
  //deployer.deploy(DataTypesOne);
  //deployer.deploy(DataTypesTwo);
  //deployer.deploy(DataTypesThree);
  //deployer.deploy(ControlFlow);
  //deployer.deploy(HotelRoom);
  deployer.deploy(MultiContracts, 'super-secret');
};
