//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Function} from "./Function.sol";

contract StorageFactory {
    Function public functionContract;
    
    // This function creates the new 'Function' contract
    function createFunctionContract() public {
        // Fixed: Removed extra quote mark
        functionContract = new Function();
    }
    
    // This function sets the favorite number on the created contract
    function setFavNumber(uint256 _favNumber) public {
        // Check if contract has been created first
        require(address(functionContract) != address(0), "Contract not created yet");
        functionContract.setFavNumber(_favNumber);
    }
    
    // This function gets the favorite number from the created contract
    function getFavNumber() public view returns (uint256) {
        // Check if contract has been created first
        require(address(functionContract) != address(0), "Contract not created yet");
        return functionContract.myFavNumber();
    }
}