// SPDX-License-Identifier: MIT

pragma solidity 0.8.10;

contract Struct
{
    mapping(uint=>Person) public people;

    uint public peopleCount=0;

    uint256 openingTime=1656427600;

    modifier onlyWhileOpen()
    {
        require(block.timestamp >= openingTime);
        _;
    }
    
    /*
      address owner;
      
      constructor()
      {
        owner=msg.sender;
      }
      
      modifier onlyOwner()
      {
        require(owner==msg.sender);
        _;
      }
      
    */

    struct Person
    {
        uint id;
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory firstName,string memory lastName) public onlyWhileOpen
    {
        incrementCount();
        people[peopleCount]=Person(peopleCount,firstName,lastName);
    }

    function incrementCount() internal
    {
        peopleCount+=1;
    }
}
