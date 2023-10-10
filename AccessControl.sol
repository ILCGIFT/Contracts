// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AccessControl {
    address public owner; // Address of the contract owner
    mapping(address => bool) public allowedUsers; // List of users allowed access

    constructor() {
        owner = msg.sender; // Set up the contract owner on deployment
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    // Function to add a user to the allowed access list
    function grantAccess(address user) public onlyOwner {
        allowedUsers[user] = true;
    }

    // Function to revoke access rights of a user
    function revokeAccess(address user) public onlyOwner {
        allowedUsers[user] = false;
    }

    // Function to check whether a user has access rights or not
    function hasAccess(address user) public view returns (bool) {
        return allowedUsers[user];
    }
}
