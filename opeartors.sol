pragma solidity ^0.4.25; // we are telling which version to use

contract abc{
    // datatypes uint int string uint8 uint256 
    uint a = 9;
    uint b = 6;
    uint c = 0;
    
    function getValueofa() public view returns(uint){
        return a;
    }
    function getValueofb() public view returns(uint){
        return b;
    }
    function getValueofc() public view returns(uint){
        return c;
    }
    function add() public
    {
        c = a+b;
    } 
    function sub() public
    {
        c = a-b;
    }
    function div() public
    {
        c = a/b;
    }
    function mul() public
    {
        c = a*b;
    }
    function pow() public
    {
        c = a**b;
    }
    
    function mod() public
    {
        c = a%b;
    }
}
