// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.24;

contract Simple{
    
    // when we want to convert one data type to another ,we use mapping
    mapping (address=>uint) public bid; // we change address to uint
    
    function Place_bid() public payable{
        // we use payable when we want to transfer value
        bid[msg.sender] = msg.value;// msg.value is the value that the address wants to bid
    }
    
}
