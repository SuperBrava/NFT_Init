// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


//Use npm for install
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract AI_NFT is ERC721URIStorage, Ownable {

	//Counter function for tracking NFT colelction 
	using Counters for Counters.Counter;
	Counters.Counter private _tokenIds;

	constructor() ERC721("AI NFT Contract", "AINFT"){}

	function totalSupply() public view returns (uint256) {
	return _tokenIds.current()

	}
}