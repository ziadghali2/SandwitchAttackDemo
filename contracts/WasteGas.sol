// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract WasteGas {
    event Waste(address sender, uint256 gas);
    uint256 constant GAS_REQUIRED_TO_EXECUTE = 60;
    
    fallback() external {
        emit Waste(msg.sender, gasleft());

        while (gasleft() > GAS_REQUIRED_TO_EXECUTE) {
            
        }
    }
}