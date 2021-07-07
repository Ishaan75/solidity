pragma solidity ^0.4.25; // we are telling which version to use
// program to return multipl values in solidity
contract abc{
    uint8 a =1;
    uint16 b=1;
    uint c =3;//256 bit
    
    function getValueofabc()public view returns(uint8,uint16,uint){
        return (a,b,c);
        // view means a b c values are just being copied and returned.
    }
}
