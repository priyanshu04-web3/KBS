# SavingsBank Smart Contract

## Overview
This project is a beginner-level Solidity smart contract created as part of a blockchain learning assignment.  
The contract acts as a personal digital savings bank where users can deposit ETH, and only the owner can withdraw funds.

---

## Features
- Anyone can deposit ETH into the contract
- Only the contract owner can withdraw ETH
- Prevents withdrawing more than the available balance
- Displays total ETH balance stored in the contract

---

## Ownership Logic
The ownership is assigned at the time of deployment using `msg.sender` inside the constructor.  
This ensures that only the deployer of the contract becomes the owner.

A `require` statement is used in the `withdraw` function to restrict access so that no other wallet can withdraw funds.

---

## Smart Contract Functions

### `deposit()`
Allows any user to send ETH to the contract.

### `getBalance()`
Returns the total ETH balance currently stored in the contract.

### `withdraw(uint amount)`
Allows only the owner to withdraw a specified amount of ETH.  
The function fails if the withdrawal amount exceeds the contract balance.

---

## Tools Used
- Solidity ^0.8.0
- Remix Ethereum IDE

---

## Author
Priyanshu

