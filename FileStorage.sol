// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FileStorage {
    // Mapping to store hexcode of files
    mapping(string => string) private fileHexcodes;

    // Function to upload the hexcode of a file
    function uploadFile(string memory fileName, string memory hexcode) public {
        fileHexcodes[fileName] = hexcode;
    }

    // Function to query the hexcode of a file
    function getHexcode(string memory fileName) public view returns (string memory) {
        return fileHexcodes[fileName];
    }
}
