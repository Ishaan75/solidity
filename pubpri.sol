pragma solidity ^0.4.25; // we are telling which version to use

contract pubpri{
    uint a =1;
    uint public b=1;
    // this is a public function but it wont show a because a is not public
    function getValueofa() public returns(uint){
        return a;
    }
    // this function would not appear in the deployed contracts bar
    function show() private returns (string){
        return ("Hello");
    }
}
