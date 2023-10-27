// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Require {
    uint256[] nums;

    function addNum(uint256 num) public {
        require(num >= 1 && num <=10, "Number must be between 1 - 10 only!");

        nums.push(num);
    }

    function getAllNums() public view returns (uint256[] memory) {
        return nums;
    }
}