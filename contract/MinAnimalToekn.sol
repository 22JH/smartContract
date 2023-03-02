// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract MintAnimalToken is ERC721Enumerable {
    constructor() ERC721("h662Animals", "HAS") {}

    function mintAnimalToken() public {

        // erc721에서 제공하는 함수, 총 갯수를 제공해줌
        uint256 animalTokenId = totalSupply() + 1;

        // erc721에서 제공, 인자는 mint를 누른사람(발급한주인), 토큰값
        _mint(msg.sender, animalTokenId);
    }
}