// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Array {
    uint256[] nums;

    function addNum(uint256 num) public {
        nums.push(num);
    }

    function getNum(uint256 index) public view returns (uint256) {
        return nums[index];
    }

    function getAllNums() public view returns (uint256[] memory) {
        return nums;
    }
}