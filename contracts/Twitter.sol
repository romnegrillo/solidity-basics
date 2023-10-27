// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Twitter {
    struct Tweet {
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }

    mapping (address => Tweet[]) tweets;

    function createTweet(string memory _content) public  {
        require(bytes(_content).length < 256, "Tweet length has a limit of 256 characters.");

        Tweet memory newTweet = Tweet({
            author: msg.sender,
            content: _content,
            timestamp: block.timestamp,
            likes: 0
        });

        tweets[msg.sender].push(newTweet);
    } 

    function getTweet(address _owner, uint256 index) public view returns(Tweet memory) {
        return tweets[_owner][index];
    }

    function getAllTweets(address _owner) public view returns (Tweet [] memory) {
        return tweets[_owner];
    }
}