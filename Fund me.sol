// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
contract Fundme {
    uint256 public minimumUSD = 5;

    function fund() public payable {
        //call to send money to our contract

        require(msg.value >= minimumUSD, "Transaction failed");
    }

    // function withdraw() public {}    //to withdraw funds

    function getPrice() public view returns (uint256) {
        // Address: 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // ABI: 'price' is Price of Eth in USD
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (, int256 price, , , ) = priceFeed.latestRoundData();
        return uint (price * 1e10);
    }

    function GetConversionRate() public {}

    function getVersion() public view returns (uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        return priceFeed.version();
    }
}
