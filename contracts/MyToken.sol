// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract Rutra_Collection_NFT is ERC721, Ownable {
    constructor() ERC721("RutraNFT", "RUTRA") Ownable(msg.sender) {

    }
    
}
