// SPDX-License-Identifier: MIT
pragma solidity^0.8.18;

import{Config}from "./Config.sol";
contract App{
    function creatconfig()public {
        require(address(config)==address(0),"config is alredy axist");
        config = new Config();
    }
    
    
    Config public config;
    
   // uint256 _number;
    function getresult()public view returns(uint256) {
       // Config.number= new _number;
        return config.number();
    }
}