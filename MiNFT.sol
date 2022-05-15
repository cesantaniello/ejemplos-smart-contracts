// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Counters.sol";

contract Mi_NFT is ERC721{
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    
    constructor() ERC721("TokenCarlos", "CARL"){}
    
    function mintNTF(address receiver, string memory tokenURI) public returns (uint256){
        _tokenIds.increment();
        uint256 newTokenId = _tokenIds.current();
        
        _mint(receiver, newTokenId);
        //_setTokenURI(newTokenId, tokenURI);
        
        return newTokenId;
    }
}