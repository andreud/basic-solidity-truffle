// Ints, stings, address, struct
pragma solidity ^0.5.16;

contract DataTypesOne {

	// State vars (stored in blockchain)
	uint public myUint = 1; // defaults to uint256
	uint256 public myUint256 = 1;
	uint8 public myUint8 = 1;
	string public myString = 'Hello!';
	bytes32 public myBytes32 = 'Smaller string';
	address public myAddress = 0x8F42bDbaFef90Dd4434BB998912bD7771f8b0cC9;

	struct MyStruct {
		uint myInt;
		string myString;
	}

	MyStruct public myStruct = MyStruct(47, "Hello again");

	// Other Struct examples 
	struct Person { 
		uint idNumber;
		string name;
	}
	struct Vote {
		address voter;
		uint8 ballot;
	}

	// Accesing state vars from function. Not necesary to create a function just to get a state var, those get automatic getters for free.
	function getMyUint() public /*pure*/ returns(uint) {
		return myUint;
	}

	// Local vars (inside functions)
	function getValue() public /*pure*/ returns(uint) {
		uint value = 1;
		//string otherValue = 'Hallo!'; // <-- ? error
		return value;
	}

}