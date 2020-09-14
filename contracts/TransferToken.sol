//SPDX-License-Identifier:MIT

pragma solidity >= 0.5.0;

import '../contracts/Token.sol';

contract TransferToken {
    function transfer() external {
        Token token = Token(0x98038728ce2aca325f76e44e8e02407bcd4dc971eb4a085441ad876a8456b932);
        token.transfer(msg.sender, 100);
    }
}

contract Owner {
    function transfer(uint amount) external {
        Token token = Token(0x98038728ce2aca325f76e44e8e02407bcd4dc971eb4a085441ad876a8456b932);
        token.approve(0x2668fb9edc457c4561d4ff15019131eeb077e4b114c4cd7f4ef893a7fa722a76, amount);

        TransferToken transferToken = TransferToken(0x2668fb9edc457c4561d4ff15019131eeb077e4b114c4cd7f4ef893a7fa722a76);
        transferToken.transferFrom(amount);
    }
}