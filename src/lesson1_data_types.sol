
// SPDX-Licence-Identifier: MIT
pragma solidity ^0.8.24;

contract Primitives {
    bool public boo = true;

    /*
    uint stands for unsigned integer, meaning non negative integers
    different sizes are available
        uint8 ranges from 0 to 2 ** 8 - 1
        uint16 ranges from 0 to 2 ** 16 - 1
        
        ....
        uint256 ranges from 0 to 2 ** 256 - 1
    */

    uint8 public u8 = 1;
    uint256 public u256 = 456;
    uint public u = 123; // uint is an alias for unit256

    // Negative numbers are allowed for int types

    // bytes represent a sequence of bytes for storing binary data
    // such as file contents or cryptographic hashes

    // fixed size bytes arrays ( bytes1 to bytes32 )
    // bytes1 = byte array of length 1

    // Dynamically sixed bytes arrays ( bytes )

    // Declare a fixed-size byute array
    bytes1 a = 0xb5; // [10110101]
    bytes1 b = 0x56; // [01010110]

    // bytes10 array
    bytes10 d = 0x68656c6c6f776f726c64; // "helloworld" in hexadecimal

    // Declare a bytes32 array
    bytes32 e = 0x68656c6c6f776f726c6420202020202020202020202020202020202020202020; // "helloworld" padded with spaces in hexadecima

    // declare a dynamically-sized byte array
    bytes c = "Hello, World";

}