// SPDX-License-Identifier:MIT
pragma solidity ^0.8.11;

contract Greeting{
    string public name;
    string public greetingPrefix="hello";

    constructor (string memory initialName){
        name=initialName;
    }

    function setName(string memory newName) public {
        name=newName;
    }
    function getGreeting() public view returns(string memory){
        return string(abi.encodePacked(greetingPrefix,name));
    }
}