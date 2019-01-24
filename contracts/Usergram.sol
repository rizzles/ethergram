pragma solidity ^0.4.25;

contract Usergram {
    event Like(address user, string ipfs);

    function addLike(string ipfs) public {
        emit Like(msg.sender, ipfs);
    }
}
