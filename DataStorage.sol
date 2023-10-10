// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataStorage {
    address public owner; // Địa chỉ của chủ sở hữu hợp đồng
    uint256 public storedData; // Dữ liệu được lưu trữ

    constructor() {
        owner = msg.sender; // Thiết lập chủ sở hữu hợp đồng khi triển khai
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    // Hàm để lưu trữ dữ liệu mới
    function storeData(uint256 newData) public onlyOwner {
        storedData = newData;
    }

    // Hàm để truy vấn dữ liệu hiện tại
    function getData() public view returns (uint256) {
        return storedData;
    }
}
