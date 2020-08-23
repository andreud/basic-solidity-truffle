//https://www.youtube.com/watch?v=7Pm9HB-mJQg&list=PLS5SEs8ZftgVnWHv2_mkvJjn5HBOkde3g&index=3
// Arrays
pragma solidity ^0.5.16;

contract DataTypesTwo {

	// Array
	uint[] public myUintArray = [1,2,3];
	string[] public myStringArray = ['apple','banana','carrot'];
	string[] public values;
	uint[][] public array2D = [[1,2,3], [4,5,6]];

	function addValue(string memory _value) public {
		values.push(_value);
	}

	function valueCount() public view returns (uint) {
		return values.length;
	}

}