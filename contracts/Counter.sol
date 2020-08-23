pragma solidity ^0.5.16;

contract Counter {

	uint public count = 0;

	function increment() public {
		count ++;
	}
}

/*
Long version: constuctor, explicit getter, etc
contract Counter {

	uint count;

	constructor() public {
		count = 0;
	}

	function getCount() public view returns(uint) {
		return count;
	}

	function increment() public {
		count = count + 1;
	}
}
*/