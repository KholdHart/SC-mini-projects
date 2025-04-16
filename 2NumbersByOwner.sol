
/*
contract TNBO{
    
    constructor{
        
    }
    uint256 num1;
    uint256 num2;

    function setNum1(uint256  _num1) public {
        num1 = _num1;
    }

    function setNum2(uint256 _num2) public {
        num2 = _num2;
    }
    
    function add(){
        uint256 answer = num1 + num2;
    }

    function getAns() public view returns {
        return answer;
    }
} */

//correction

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TNBO{


    address public owner; // saves who deployed the contract
    uint256 private num1;
    uint256 private num2;
    uint256 private answer;

    constructor() {
        owner = msg.sender;
    }

    function setNum(uint256 _num1, uint _num2) public{
        require(msg.sender == owner,"NOT The Owner");
        num1 = _num1;
        num2 = _num2;
    }

    function add() public {
        answer = num1 + num2;
    }

    function getAns() public view returns (uint256)  {
        return answer;
    }
    
    

}