// https://www.youtube.com/watch?v=wJnXuCFVGFA&list=PLS5SEs8ZftgVnWHv2_mkvJjn5HBOkde3g&index=4
pragma solidity ^0.5.16;
// Mappings

contract DataTypesThree {

	mapping(uint=>string) public names;
	mapping(uint=>Book) public books; // Example simple mapping, just store books
	mapping(address=>mapping(uint=>Book)) public myBooks;

	struct Book {
		string title;
		string author;
	}

	constructor() public {
		names[1] = "Andy";
		names[2] = "Beto";
		names[3] = "Carlos";
	}

	function addBook(uint _id, string memory _title, string memory _author) public {
		books[_id] = Book(_title, _author);	
	}

	function addMyBook(uint _id, string memory _title, string memory _author) public {
		myBooks[msg.sender][_id] = Book(_title,_author);
	}

}