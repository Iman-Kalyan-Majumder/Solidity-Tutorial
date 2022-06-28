//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract BuyToken
{
    mapping(address=>uint256) public tokens;

    address payable wallet;

    constructor(address payable _wallet)
    {
        wallet=_wallet;
    }

    function buyToken() public payable
    {
        //buying a token
        tokens[msg.sender]+=1;
        //pay ether to the account that deployed the smart contract
        wallet.transfer(msg.value);
    }
}
