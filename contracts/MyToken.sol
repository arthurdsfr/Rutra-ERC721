// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract Rutra_Collection_NFT is ERC721, Ownable {

    // ==== 1. Property Variables =====//

        using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;

    // ==== 2. Lifecycle methods =====//

    constructor() ERC721("RutraNFT", "RUTRA") Ownable(msg.sender) {
    }
    
    // ==== 3. Mint/Burn Functions ====//

     function safeMint(address to) public onlyOwner {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
    }

}
