// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract KRRToken is ERC20 {
    constructor() ERC20("Keroro", "KRR") {
        _mint(msg.sender, 1000*10**18);
    }

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}