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


## Credits

Code samples form Dapp University:
https://www.youtube.com/watch?v=HxlxNwgoN8w