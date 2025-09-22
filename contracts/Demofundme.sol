//SPDX-License-Identifier: MIT
pragma solidity^0.8.18;

contract Demofundme{
    function fund() public payable{
       require( msg.value>=1 ether,"you have less than 1 ether.");
    }
}
