// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FundAllocationTracker {

    address public owner;

    // Struct to represent an allocation of funds
    struct Allocation {
        uint256 amount;
        uint256 timestamp;
        string description; // Description of the allocation (e.g., for a specific project)
    }

    // Mapping to store allocations for each recipient (address)
    mapping(address => Allocation[]) public allocations;

    // Event to log fund allocation
    event FundsAllocated(address indexed recipient, uint256 amount, string description, uint256 timestamp);

    // Constructor to set the owner of the contract (usually the fund manager)
    constructor() {
        owner = msg.sender;
    }

    // Function 1: Allocate funds to a specific recipient
    function allocateFunds(address recipient, uint256 amount, string memory description) external {
        require(msg.sender == owner, "Only the owner can allocate funds");
        require(recipient != address(0), "Invalid recipient address");
        require(amount > 0, "Amount must be greater than zero");

        // Record the allocation details
        allocations[recipient].push(Allocation({
            amount: amount,
            timestamp: block.timestamp,
            description: description
        }));

        // Emit an event to log the fund allocation
        emit FundsAllocated(recipient, amount, description, block.timestamp);
    }

    // Function 2: Track allocations made to a specific recipient
    function trackAllocation(address recipient) external view returns (Allocation[] memory) {
        require(recipient != address(0), "Invalid recipient address");

        // Return all allocations made to the recipient
        return allocations[recipient];
    }
}
