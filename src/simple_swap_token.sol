
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Implement Uniswap swap interface
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
// Implement library to help with token transfers
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract SimpleTokenSwap {
    // Define the Uniswap Router address and the WETH address variable
    ISwapRouter public immutable swapRouter;
    address public immutable WETH;

    // Define the constructor
    constructor(address _swapRouter, address _WETH) {
        // Initialize the addresses
        swapRouter = ISwapRouter(_swapRouter);
        WETH = _WETH;
    }

    // Create a swap function that takes input and output token addresses,
    // the input amount, the minimum output amount, and the recipient's address
    function swap(
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOutMin,
        address recipient
    ) external {
        // Transfer the input tokens from the sender to the contract
        IERC20(tokenIn).transferFrom(msg.sender, address(this), amountIn);

        // Approve the Uniswap router to spend the input tokens
        IERC20(tokenIn).approve(address(swapRouter), amountIn);

        // Define the exact input swapping path to swap maximum amount of receiving token
        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
            tokenIn: tokenIn,
            tokenOut: tokenOut,
            fee: 3000, // Example pool fee for Uniswap v3
            recipient: recipient,
            deadline: block.timestamp + 15, // Short deadline for security
            amountIn: amountIn,
            amountOutMinimum: amountOutMin,
            sqrtPriceLimitX96: 0 // No price limit
        });

        // Call the Uniswap router's exactInputSingle function to execute the swap
        swapRouter.exactInputSingle(params);
    }
}
