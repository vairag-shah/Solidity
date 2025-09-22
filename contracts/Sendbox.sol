//SPDX-License-Identifier: MIT
pragma solidity^0.8.18;

import{Owner}from"./Owner.sol";
contract Sendbox{
    Owner public owner;
    string master;
  /*  constructor(){
        require(msg.sender==address(owner),"you are not the owner");
    }
    function getaddress()public{
        require(address(owner)==address(0),"address is alredy created");
        owner = new Owner();
    }*/
    function editmessage(string memory _master)public{
        master=_master;      
    }
       
}
