pragma solidity ^0.4.25; // we are telling which version to use

contract abc{
    // datatypes uint int string uint8 uint256 
    uint a = 9;
    
    function getValue() public view returns(uint){
        return a;
    }
    function setValue(uint _a) public
    {
        a = _a;
    } 
}
