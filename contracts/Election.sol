// solidity version
pragma solidity ^0.8.11;

contract Election {
    // model a candidate
    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }
    // store candidates
    // fetch candidate
    mapping(uint256 => Candidate) public candidates;
    // store candidates count
    uint256 public candidateCount;

    // Constructor
    constructor() {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string memory _name) private {
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount, _name, 0);
    }
}
