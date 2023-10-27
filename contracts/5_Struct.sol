// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Struct {
    struct Student {
        uint256 studentNumber;
        string firstName;
        string lastName;
    }

    Student[] students;

    function addStudent(uint256 _studentNumber, string memory _firstName, string memory _lastName) public {
        Student memory newStudent = Student({
            studentNumber: _studentNumber,
            firstName: _firstName,
            lastName: _lastName
        });

        students.push(newStudent);
    }

    function getStudent() public view returns (Student[] memory) {
        return students;
    }
}