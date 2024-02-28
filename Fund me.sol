// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Fundme{
    
    uint public minimumUSD = 5; 

    function fund() public payable {    //call to send money to our contract

    require(msg.value >= minimumUSD, "Transaction failed");
    }

    // function withdraw() public {      //to withdraw funds

    // }
}
