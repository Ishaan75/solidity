// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.24;

contract Simple{
    
    struct Car{
        string brand;
        uint built_in_year;
        uint value;
        string fuel_type;
    }
    Car public private_car;
    
    // to store the address of deployment
    address public owner;
    
    // constructor to intiliaze the objects just like we do in c++
    constructor (string _brand,uint _built_in_year , uint _value,string _fuel_type) public{
        private_car.brand = _brand;
        private_car.built_in_year =  _built_in_year;
        private_car.value = _value;
        private_car.fuel_type = _fuel_type;
        //  it displays the address of owner
        owner = msg.sender;
    }
    
    //  same thing can be done with the help of a set and get functions
    // we can use this when we want to update the values
    
    // set the values
    function set_car(uint _built_in_year,uint _value) public{
        private_car.value = _value;
        private_car.built_in_year = _built_in_year;
    }
    
}
