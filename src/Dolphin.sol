//SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Dolphin is ERC721 {

    uint256 private s_tokenCounter;
    string private s_dolphinUri;

    mapping(uint256 s_tokenCounter => string s_dolphinUri)  private tokenCounterToUri;

    constructor(string memory dolphinUri) ERC721("Dolphin", "DLP") {
        s_dolphinUri = dolphinUri;
        s_tokenCounter = 0;

    } 

    function safeMint() public {
        tokenCounterToUri[s_tokenCounter] = s_dolphinUri;
        _mint(msg.sender, s_tokenCounter);
        s_tokenCounter++;
    }

    function tokenURI(uint256 tokenId) public view override returns(string memory dolphinUri) {
        return tokenCounterToUri[tokenId];
    }
}