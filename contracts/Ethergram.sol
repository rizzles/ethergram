pragma solidity ^0.4.25;

import "./Usergram.sol";

contract Postgram {
    event PostCreated(string ipfs, string caption, address owner);

    struct Post {
        address owner;
        uint created;
        string ipfs;
        string caption;
        string filter;
    }

    Post[] public posts;

    mapping (uint => address) public postToOwner;
    mapping (address => uint) ownerPostCount;

    function createPost(string _ipfs, string _caption, string _filter) public {
        uint id = posts.push(Post(msg.sender, now, _ipfs, _caption, _filter)) - 1;
        postToOwner[id] = msg.sender;
        ownerPostCount[msg.sender]++;
        emit PostCreated(_ipfs, _caption, msg.sender);
    }

    function getPostsLength() public view returns (uint) {
        return posts.length;
    }

    function getPost(uint _index) public view returns (address, uint, string, string, string) {
        return (posts[_index].owner, posts[_index].created, posts[_index].ipfs, posts[_index].caption, posts[_index].filter);
    }

    function getPostsByOwner(address _owner) external view returns(uint[]) {
        uint[] memory result = new uint[](ownerPostCount[_owner]);
        uint counter = 0;
        for (uint i = 0; i < posts.length; i++) {
            if (postToOwner[i] == _owner) {
                result[counter] = i;
                counter++;
            }
        }
        return result;
    }
}

contract Ethergram is Usergram, Postgram {

}
