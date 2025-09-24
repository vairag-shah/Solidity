// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundChecker {
    // The price feed interface, set in the constructor
    AggregatorV3Interface internal priceFeed;

    // The target USD value, represented with 18 decimals (like wei)
    uint256 public constant MINIMUM_USD = 15e18;

    /**
     * Network: Sepolia
     * Aggregator: ETH/USD
     * Address: 0x6930533C4E6f6D74c2998b350a311646B0389062
     */
    constructor() {
        // Use the official Sepolia ETH/USD price feed address
        priceFeed = AggregatorV3Interface(
            0x694AA1769357215DE4FAC081bf1f309aDC325306
        );
    }

    /**
     * @notice A function to receive funds, which reverts if the
     * value is less than 15 USD.
     */
    function deposit() public payable {
        // We require the USD value of the sent ETH to be >= our minimum
        require(
            getUsdValue(msg.value) >= MINIMUM_USD,
            "You must send at least 15 USD worth of ETH!"
        );
        // If the require statement passes, the transaction succeeds.
    }

    /**
     * @notice Converts a given amount of ETH (in wei) to its USD value
     * (with 18 decimals).
     */
    function getUsdValue(uint256 _ethAmount) public view returns (uint256) {
        (, int256 price, , , ) = priceFeed.latestRoundData();
        uint8 decimals = priceFeed.decimals(); // This will be 8

        // This is the correct formula to handle the decimals.
        // It converts the price to a value with 18 decimals.
        return ((uint256(price) * _ethAmount) * 10**10) / 1e18;
    }
}