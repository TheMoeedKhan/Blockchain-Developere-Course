// Example of Crowdsourcing or Fund raising Contract
// Get Funds from User
// Withdraw Funds
// Set a minimum funding amount in USD.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FundMe{

    uint public minUSD = 5;

    uint public Value;
    function Fund() public payable {
        Value = msg.value;
        require(msg.value >= minUSD, "Not Transacted Enough");
    }

    //function Withdraw() public {}

    function $EthPrice() public {
        //address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        //ABI
    }

    function getConversionRate() public {

    }
}
