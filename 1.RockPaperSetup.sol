// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RPS {

    enum Move { None , Rock, Paper, Scissors}

    mapping (address => Move) private playerMoves;

    function playMove(uint256 _move) public {
        require(_move >= 1 && _move <=3, "Invalid Move");

        playerMoves[msg.sender] = Move(_move);
    }

    function getMyMove() public view returns (Move) {
        return playerMoves[msg.sender];
    }
    
    
}