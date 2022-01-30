// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


//Use npm for install
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract AI_NFT is ERC721URIStorage, Ownable {

	 using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() public ERC721("AI_NFT", "NFT") {}

    function mintNFT(address recipient, string memory tokenURI)
        public onlyOwner
        returns (uint256)
    {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}