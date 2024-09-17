// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract Rutra_Collection_NFT is ERC721URIStorage, Ownable {

    // ==== 1. Property Variables =====//

        using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;
    uint256 public maxSupply = 1000; 

    // ==== 2. Lifecycle methods =====//

    constructor() ERC721("RutraNFT", "RUTRA") Ownable(msg.sender) {
    }
    
    // ==== 3. Mint/Burn Functions ====//

     function safeMint(address _to, string memory tokenURI) public onlyOwner {
        require(_tokenIdCounter.current() + 1 < maxSupply, "100% supply deployed" );
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(_to, tokenId); // more securized than _mint
        _setTokenURI(tokenId, tokenURI); //
    }

}
