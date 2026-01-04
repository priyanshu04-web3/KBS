// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SavingsBank {

    // Address of the owner (person who deploys the contract)
    address public owner;

    // Constructor runs only once at deployment
    constructor() {
        owner = msg.sender;
    }

    // Function to deposit ETH into the contract
    function deposit() public payable {
        // payable allows this function to receive ETH
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
