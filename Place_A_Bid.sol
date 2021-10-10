// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.24;
// program to send ethers from a particular address 
contract Simple{
    
    uint public price;
    string public location;
    address public owner;
    mapping (address => uint) bid;
    
    enum State{Running,Stopped}
    State public status;
    
    constructor () public{
        owner = msg.sender;
    }
    function set_value(uint _price,string _location) public{
        price = _price;
        location = _location;
    }  
    function sendEther() public payable{
        bid[msg.sender] = msg.value;
    }
}
