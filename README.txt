My Solidity Learning Journey
📖 About This Repository
This repository contains a collection of smart contracts I have written as part of my journey to learn the Solidity programming language and the fundamentals of Ethereum development. Each contract is a standalone exercise designed to practice and demonstrate a specific, core concept.

✨ Key Concepts Covered
This collection of contracts demonstrates my understanding of:

Basic Solidity syntax and data types.

State variables, functions, getters, and setters.

The difference between view and pure functions.

Importing contracts and code reusability.

Contract-to-contract interaction.

The Factory Pattern for deploying contracts from another contract.

Passing contract addresses in a constructor to link contracts.

Basic error handling with require.

📂 Contract Breakdowns
Here is an explanation of what each contract in this repository does and the concepts I learned while writing it.

1. Firstcontract.sol
Concept: This contract is an exercise in declaring and initializing all the basic data types available in Solidity.

What I Learned:

How to declare and use bool, uint, int, bytes, string, and address.

Setting initial values for state variables.

The use of public visibility to automatically create getter functions.

2. Function.sol
Concept: A simple contract that demonstrates how to store, update, and retrieve data using functions.

What I Learned:

Creating a state variable (myFavNumber).

Writing a "setter" function (setFavNumber) to modify the state.

Writing a "getter" function (getFavNumber) with view visibility to read the state without a transaction fee.

3. Child.sol & Perent.sol
Concept: These two contracts work together to demonstrate how one contract can read data from another already existing contract.

What I Learned:

How to import one Solidity file into another.

How to initialize a contract instance by passing another contract's address into the constructor.

Calling a function (getnum) on an external contract to retrieve its data.

4. StorageFactory.sol
Concept: This contract demonstrates the Factory Pattern, a powerful design pattern where one contract is used to deploy other contracts.

What I Learned:

Using the new keyword to create and deploy new instances of the Function contract.

Storing the newly created contract's address in a state variable.

Calling functions on the newly created contract (setFavNumber and getFavNumber).

Using require() to ensure a contract has been created before trying to interact with it.

🛠️ Technologies Used
Language: Solidity (^0.8.0)

IDE: Remix
