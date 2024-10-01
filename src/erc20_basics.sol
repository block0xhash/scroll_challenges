
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Define your ERC20 token contract
contract MyToken is ERC20 {
    // Define the global variables for balances, total supply, name, and symbol below

    // This is the total supply of the token (handled internally by ERC20)
    uint256 private _totalSupply;

    // Name and symbol of the token (already handled by ERC20 constructor)
    string private _name;
    string private _symbol;

    // Mapping to store the balances (handled internally by ERC20)
    mapping(address => uint256) private _balances;

    // Constructor that sets the name, symbol, and initial supply
    constructor(uint256 initialSupply) ERC20("MyToken", "MTK") {
        // Mint the initial supply of tokens to the deployer's address
        _mint(msg.sender, initialSupply);
    }

    // Function to get the name of the token (optional override, since ERC20 provides it)
    function name() public view override returns (string memory) {
        return _name;
    }

    // Function to get the symbol of the token (optional override, since ERC20 provides it)
    function symbol() public view override returns (string memory) {
        return _symbol;
    }

    // Function to get the total supply (optional override, since ERC20 provides it)
    function totalSupply() public view override returns (uint256) {
        return _totalSupply;
    }

    // Function to get the balance of a specified address
    function balanceOf(address account) public view override returns (uint256) {
        return _balances[account];
    }
}
