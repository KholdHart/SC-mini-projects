
// pragma solidity ^0.8.0;

// contract studentRegistry{

//     struct Student{
//         string name;
//         string level;
//         uint256 GPA;
//     }
        

//     mapping (address => Student) public students;

//     function registerStudent (string me _name, string memory _level, uint256 _GPA) public {
//         /*name = _name;
//         level = _level;
//         GPA = _GPA; */

//         students[msg.sender] = Student(_name, _level, _GPA);
//     }

//     /* function getStudents public view returns (string memory, string memory, uint256){
//         return registerStudent(_name, _level, _GPA);
//     } */

//     function getStudents() public view returns (string memory, string memory, uint256){
        
//         Student memory s = students[msg.sender];
//         return (s.name, s.level, s.GPA);
//     }
// }

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Declare the contract
contract StudentRegistry {

    // Define a custom struct type to hold student information
    struct Student {
        string name;     // The student's name
        string level;    // The student's academic level (e.g., "Freshman", "Senior")
        uint256 GPA;
        bool isRegistered;     // The student's GPA (e.g., 350 = 3.5)
    }

    // Mapping to associate each address with its corresponding Student struct
    mapping(address => Student) private students;

    // Function to register a student or update their info
    function registerStudent(string memory _name, string memory _level, uint256 _GPA) public {
        // Store the provided data as a new Student struct in the mapping
        // The key is msg.sender (whoever called the function)
        students[msg.sender] = Student(_name, _level, _GPA, true);
    }

    // Function to retrieve the caller's stored student record
    function getMyRecord() public view returns (string memory, string memory, uint256) {
        // Load the Student struct for the caller into a temporary variable 's'
        Student memory s = students[msg.sender];

        // Return the student's name, level, and GPA
        return (s.name, s.level, s.GPA);
    }

    function getstudent(address _student) public view returns (string memory, string memory, uint256, bool){
        Student memory s = students[_student];
        return  (s.name, s.level, s.GPA, s.isRegistered);
    }

    function deletestudent() public {
        delete students[msg.sender];
    }
}