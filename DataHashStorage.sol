// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataHashStorage {
    mapping(string => bytes32) private fileHashes;

    event FileUploaded(string indexed fileName, bytes32 indexed fileHash);

    function uploadFileAndHash(string memory fileName, bytes32 fileHash) public {
        fileHashes[fileName] = fileHash;
        emit FileUploaded(fileName, fileHash);
    }

    function getFileHash(string memory fileName) public view returns (bytes32) {
        return fileHashes[fileName];
    }
}
