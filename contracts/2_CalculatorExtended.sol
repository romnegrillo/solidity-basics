// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Calculator {
    uint256 result = 0;

    function add(uint256 num) external {
        result += num;
    }

    function subtract(uint256 num) external {
        result -= num;
    }
}

contract CalculatorExtended is Calculator {
    function multiply(uint256 num) external {
        result *= num;
    }

     function divide(uint256 num) external {
        result /= num;
    }

    function getResult() external view returns (uint256) {
        return result;
    }
}