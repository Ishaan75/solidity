pragma solidity ^0.4.25; // we are telling which version to use

contract arraydemo{
    // arrays and structures
    // array is a collection of similar data types. It can be said as a homogenous cluster.
    // a structure is a user defined type which groups different data types . It can be said as heterogenous cluster.
    
    struct student{
        uint id;
        string name;
    }
    
    uint[] array1; // this is a dynamci array or vector as in c++
    uint[20] array2; // this is a statcic array of 20 size
}
