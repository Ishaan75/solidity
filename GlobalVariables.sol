// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.24;


contract GlobalVariables{
    
    // get the time for this momnet
    uint public this_moment_time = now;
    uint public block_number = block.number;
    
    // find out how its difficult to mine that block
    uint public difficulty = block.difficulty;
    
    uint public gasLimit = block.gaslimit;
    uint public timestamp = block.timestamp;
    
    
}
