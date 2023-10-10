// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataVerification {
    bytes32 public storedData; // Dữ liệu được lưu trữ

    constructor() {
        storedData = 0x0; // Khởi tạo dữ liệu ban đầu
    }

    // Hàm để lưu trữ dữ liệu mới
    function storeData(bytes32 newData) public {
        storedData = newData;
    }

    // Hàm để xác minh tính toàn vẹn của dữ liệu
    function verifyData(bytes32 dataToVerify) public view returns (bool) {
        return (storedData == dataToVerify);
    }
}
