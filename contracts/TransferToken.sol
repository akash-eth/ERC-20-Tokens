//SPDX-License-Identifier:MIT

pragma solidity >= 0.5.0;

import '../contracts/Token.sol';

contract TransferToken {
    function transfer() external {
        Token token = Token();
        token.transfer(msg.sender, 100);
    }
}
