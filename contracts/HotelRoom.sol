pragma solidity ^0.5.16;

// 
// Topcis covered: Ether payments, Modifiers, Visibility, Events, Enums

contract HotelRoom {

	enum Statuses { Vacant, Occupied }
	Statuses currentStatus;
	
	address payable public owner;
	address public occupant;

	constructor() public {
		owner = msg.sender;
		currentStatus = Statuses.Vacant;
	}

	event Occupy(address _occupant, uint _value);

	// Modifiers
	modifier onlyWhileVacant {
		require(currentStatus == Statuses.Vacant, 'Room is currently occupied');
		_;
	}
	modifier costs(uint _amount) {
		require(msg.value >= _amount, 'Not enough money provided'); 
		_;
	}

	// Special func name "receive"
	function receive() external payable onlyWhileVacant costs(2 ether) {
		// Check Status and price, extracted to two modifiers
		// require(currentStatus == Statuses.Vacant, 'Room is currently occupied');
		// require(msg.value >= 2 ether, 'Not enough etehr provided'); 
		// Book it
		currentStatus = Statuses.Occupied;
		owner.transfer(msg.value);
		occupant = msg.sender;
		emit Occupy(msg.sender, msg.value);
	}

	function leave() public {
		require(msg.sender == occupant, 'You are not the current occupant');
		require(currentStatus == Statuses.Occupied, 'Room is not ccoupied');
		currentStatus = Statuses.Vacant;
		//occupant = null
	}

}