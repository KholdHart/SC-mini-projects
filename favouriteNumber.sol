
/*pragma solidity ^0.8.0;

contract FavNum {

    uint256 favouriteNumber;
    
    function setFavouriteNumber() {
        favouriteNumber = // i dont know
    }

    function getFavouriteNumber() {
        return favouriteNumber
    }

}*/

//correction

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FavNum {

    uint256 favouriteNumber;

    function setFavouriteNumber(uint256 _num) public {
        favouriteNumber = _num;
    }

    function getFavouriteNumber() public view returns (uint256){
        return favouriteNumber;
    }

}