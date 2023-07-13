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