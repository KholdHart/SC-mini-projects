// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract addressAndNumbers {

    mapping(address => uint256) private favouriteNumbers;

    function setFavouriteNumber(uint256 _number) public {
        favouriteNumbers[msg.sender] = _number;
    }

    function getFavouriteNumber() public view returns (uint256) {
        return favouriteNumbers[msg.sender];
    }

    function getFavouriteNumberOf(address _user) public view returns (uint256) {
        return favouriteNumbers[_user];

    }
  
}