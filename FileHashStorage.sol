pragma solidity ^0.8.0;

contract FileHashStorage {
    mapping(address => string) private hashMap;

    function storeHash(string memory _hash) public {
        hashMap[msg.sender] = _hash;
    }

    function getHash() public view returns (string memory) {
        return hashMap[msg.sender];
    }
}
