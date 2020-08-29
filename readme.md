# Solidity basics with truffle
 
Practicing and showcasing the basics of solidity using the truffle framework.
Code samples taken from Dapp University video series, but compiled and ran on a Truffle local environment rather than browser's IDE Mix. 

## Running on terminal
	
Youll need Truffle installed via npm and the Ganache local test blockchain running

1. Deploy contracts and open console. (Contacts to be deployed defined in migrations dir)

	$ truffle deploy --reset
	$ truffle console

2. Obtain an instace of a contract (IE. Counter)

	> let counterInstance = await Counter.deployed()
	> counterInstace

3. Interact with deployed contracts

	> counterIntance.count()
	> counterIntance.increment()

Calling a function from an account different than deployer (accounts[0]) and/or passing it an ether amount 

	> CFI.amITheOwner(arg1, arg2, {from:accounts[7], value:20000000000000000})


## Links
- https://www.trufflesuite.com/docs/truffle/getting-started/interacting-with-your-contracts
- https://ethereum.stackexchange.com/questions/19283/in-the-truffle-console-how-to-set-and-get-current-account
- https://btrjtrky.blogspot.com/2018/12/how-to-change-truffle-console-account.html

## Credits

Code samples form Dapp University:
https://www.youtube.com/watch?v=HxlxNwgoN8w