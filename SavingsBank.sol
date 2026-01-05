// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SavingsBank {

    // Address of the owner 
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Function to deposit ETH
    function deposit() public payable {
        // payable allows this function to receive ETH
        // public allows anyone to deposit ETH
    }

    // Function to check total ETH balance of the contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    // Function to withdraw ETH (only owner allowed)
    function withdraw(uint _amount) public {
        // Ensure only owner can withdraw
        require(msg.sender == owner, "Only owner can withdraw");

        // Ensure sufficient balance exists
        require(_amount <= address(this).balance, "Insufficient balance");
        // Transfer ETH to owner
        payable(owner).transfer(_amount);
}


       
}
