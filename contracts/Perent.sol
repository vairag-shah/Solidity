//SPDX-License-Identifier: MIT
pragma solidity^0.8.0;
import{Child}from"./Child.sol";
contract Perent{
      Child public new_child;
      constructor(address _childcontract){
        new_child=Child(_childcontract);
      }
      function get_newnum()public view returns(uint256){
        return new_child.getnum();
      }
}