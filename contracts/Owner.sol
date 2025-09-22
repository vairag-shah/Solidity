//SPDX-License-Identifier: MIT
pragma solidity^0.8.18;
import{Sendbox}from"./Sendbox.sol";
    
    contract Owner{
        address owner;
        string private _edit;
        constructor(){
            owner = msg.sender;
        }
        Sendbox public sendbox;
        function getsendbox()public{
            sendbox = new Sendbox();
        }
       /* function _editmessage()public returns(string memory){
            _edit=sendbox.editmessage(); 
        }*/


    }