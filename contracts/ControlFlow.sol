pragma solidity ^0.5.16;

contract ControlFlow {

	uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];
	address public owner;
	
	constructor() public {
		// "constructor" runs only at deployment
		// store the deployer user address
		owner = msg.sender; 
	}

	// Ifs
	function isEvenNumber(uint _number) public view returns(bool) {
		if(_number % 2 == 0) {
			return true;
		} else {
			return false;
		}
	}

	// Loops
	function countEvenNumbers() public view returns(uint) {
		uint count = 0;
		for(uint i=0; i<numbers.length; i++) {
			if(isEvenNumber(numbers[i])) {
				count ++;
			}
		}
		return count;
	}

	// Check if current user calling is the deployer
	function amITheOwner() public view returns(bool) {
		return msg.sender == owner
	}

}