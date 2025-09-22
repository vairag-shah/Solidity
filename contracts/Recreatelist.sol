//SPDX-License-Identifier: MIT
pragma solidity^0.8.19;
import {SimpleStorage} from "./Simplestorage.sol";


contract Recreatelist{
   // address[] public getsimplestorage;
    SimpleStorage[] public simplestorage;
    function getcontract()public{
        SimpleStorage  newsimplestorage = new SimpleStorage();
        simplestorage.push(newsimplestorage);
    }
    function store(uint256 _index,uint256 _number)public{
        simplestorage[_index].store(_number);
    }
    function get(uint256 _index)public view returns(uint256){
        return simplestorage[_index].retrieve();
    }


}

