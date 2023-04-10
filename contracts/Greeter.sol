// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// 引用@openzeppelin/contracts-upgradeable 可升级合约库
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

// 我们的合约需要继承Initializable
contract MyContract is Initializable {
    int storageValue;

    // modifier(修饰器) initializer 可以确保initialize只会被调用一次
    function initialize(int initValue) public initializer {
        storageValue = initValue;
    }

    function setValue(int newValue) public {
        storageValue = newValue + 1;
    }

    function getValue() public view returns (int) {
        return storageValue;
    }
}
