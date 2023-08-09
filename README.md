# TOKEN CREATION
This is a simple solidity program in which we will be creatying some tokens using some functions , state variables used in solidity programming , aim of this program is to create some tokens and destroy them as well .
## DESCRIPTION
This program is created with stwo functions taking two agruments ,some state variables and mapping , the significance of the first and second function is to collect and destroy tokens respectively and returning the no of tokens on a specific address.
## GETTING STARTED
### EXECUTING PROGRAM
THIS PROGRAM CAN BE RUN ON A WEBSITE https://remix.ethereum.org/ 

first make a file with an extension . sol then write this code into the file 

//SPDX-License-Identifier:MIT
pragma solidity ^0.8.8;

contract myfirsttoken{
 
 string public tokenname="MTA";
 
 string public tyokenabbr = "MTA";
 
 uint public totalsuply = 0;
 
 mapping (address => uint)public balances;
  
  function mint (address _address , uint _value )public {
     
      totalsuply += _value;
      
      balances[_address]+=_value;
  }
 
  function burn(address _address , uint _value )public{
      
      if (balances[_address]>=_value)
     {totalsuply -= _value;
      balances[_address]-=_value;}
  }

}

and then compile it and then deploy it and then we are ready to perform thre operations.
## AUTHORS
Metacrafter Chris

@metacraftersio
## LICENSE

This project is licensed under the MIT License - see the LICENSE.md file for details
