// SPDX-License-Identifier: MIT

pragma solidity 0.8.10;

contract Struct
{
    Person[] public people;

    uint public peopleCount=0;

    struct Person
    {
        uint id;
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory firstName,string memory lastName) public
    {
        peopleCount+=1;
        people.push(Person(peopleCount,firstName,lastName));
    }
}
