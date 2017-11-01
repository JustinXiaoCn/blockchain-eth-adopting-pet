pragma solidity ^0.4.4;

contract Adoption {
    address[8] public adopters;
    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 7);
        adopters[petId] = msg.sender;
        return petId;
    }
    
    // Retrieving the adopters
    function getAdopters() public returns (address[8]) {
        return adopters;
    }
}