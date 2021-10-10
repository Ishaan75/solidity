// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.24;


contract FunctionVisibility{
    
    uint a= 8; // private Private state variables can be accessed only internally from the current contract they are defined not in the derived contract from it.
    uint public x=10; // public Public state variables can be accessed internally as well as via messages. For a public state variable, an automatic getter function is generated.
    uint public b=5;
    
    function getA() public view returns(uint){
        return a;
    }
    function f1() public view returns(uint){
        return x;
    }
    // private functions ae used within the smart contracts
    function f2() private view returns(uint){
        return b;
    }
    
    function f3() public view returns(uint){
        uint a1;
        a1=f2(); // we have use private function f2 here , thus it has fulfilled its purpose of exsistence
        return a1;
    }
    // Internal functions are called in derived contracts , it can be roughly said analogous to virtual function or dynamic polymorphism in oops
    function f4() internal view returns(uint){
        return x;
    }
    // external functions are also called in derived but with new keyword
    function f5() external view returns(uint){
        return b;
    }
    
}
contract B{
    FunctionVisibility public fv1 = new FunctionVisibility();
    // we can call public function
    uint public temp = fv1.f1();
    // we can not call f2 with the same example above as it is private
    // similarly can't call with f4,f5
}
contract derived is FunctionVisibility{
        uint public d = f4(); 
        FunctionVisibility public fv = new FunctionVisibility();
        uint public x3 = fv.f5();
        
}
