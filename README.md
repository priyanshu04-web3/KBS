#SavingsBank Smart Contract

This is a beginner-friendly Solidity smart contract built while learning blockchain.
It works like a simple digital savings bank on Ethereum.

Anyone can deposit ETH into the contract, but only the person who deployed it (the owner) can withdraw funds. The contract also makes sure that withdrawals cannot exceed the available balance.

Ownership is set automatically at deployment using msg.sender, so the deployer becomes the owner. Security checks using require() ensure that no other wallet can withdraw ETH and that the contract always has enough balance before sending funds.

The contract includes three main functions:

deposit() – lets anyone send ETH to the contract

getBalance() – shows the total ETH stored in the contract

withdraw(uint amount) – allows only the owner to withdraw ETH

This project was built using Solidity ^0.8.0 and tested in Remix IDE.

Author: Priyanshu
