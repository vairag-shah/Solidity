//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Function {
    uint256 public myFavNumber = 0;
    
    function setFavNumber(uint256 _favNumber) public {
        myFavNumber = _favNumber;
    }
    
    function getFavNumber() public view returns (uint256) {
        return myFavNumber;
    }
}