// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Mapping {

    mapping(address => string) myMap;

    function setMap(string memory _greeting) public  {
        myMap[msg.sender] = _greeting ;
    }

    function getMap() public view returns (string memory) {
        return myMap[msg.sender];
    }

}