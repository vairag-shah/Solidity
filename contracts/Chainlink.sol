//SPDX-License-Identifier: MIT
pragma solidity^0.8.18;
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract Chainlink{
    uint256 public USD_price = 15e18;
    //msg.value public eth;
   // address public eth ="0x5fFf2310991a6428f0842700AE4273F1eDe3ad17";
   function getvalue()public payable {
    require(setprice(msg.value)>= USD_price,"you have not enufe mony !");
   }
   function getprice()public view returns(uint256)  {
    AggregatorV3Interface price= AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
     (,int256 answer,,,)   =price.latestRoundData();
     return uint256(answer*1e18);
   }
   function setprice(uint256 eth) public view returns(uint256){
    uint256 getetherprice=getprice();
    uint256 putetherprice=(eth*getetherprice)/1e18;
    return putetherprice;

   }
}



/*

pragma solidity ^0.8.0;

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  // getRoundData and latestRoundData should both raise "NoDataAvailable"
  // if they do not have data to report, instead of returning unset values
  // which could be misinterpreted as actual reported values.
  function getRoundData(uint80 _roundId)
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );

  function latestRoundData()
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );
}*/