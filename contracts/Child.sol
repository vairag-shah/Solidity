//SPDX-License-Identifier: MIT
pragma solidity^0.8.0;


contract Child{

    uint256 public number = 22;
    function getnum()public view returns(uint256){
        return number;
    }

}