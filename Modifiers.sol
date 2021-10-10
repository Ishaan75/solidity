// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.24;


contract ModifierExample{

    uint public x=10;
    address public owner=msg.sender;
    function getX() public onlyOwner view returns(uint){
        return x;
    }
    modifier onlyOwner(){
        require(msg.sender==owner);
        _;
    }
    
}
