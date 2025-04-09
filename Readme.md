
# Fund Allocation Tracker

This is a simple web application that allows the **owner** to allocate funds to specific recipients and track the allocations made to each recipient using a smart contract deployed on the Ethereum blockchain. The contract allows fund allocation with detailed descriptions and allows any user to view past allocations made to a recipient.

### Features

- **Allocate Funds**: The contract owner can allocate funds to a recipient with a description and timestamp.
- **Track Allocations**: Any user can track all fund allocations made to a specific recipient.
- **Transparency**: All fund allocations are logged and can be tracked by anyone for transparency.

---

## Prerequisites

- **MetaMask**: This application requires MetaMask, a browser extension wallet, to interact with the Ethereum blockchain.
- **Ethereum Network**: You must be connected to an Ethereum network (either a test network like Rinkeby or a local network like Ganache) to interact with the contract.
- **Web3.js**: The frontend interacts with the blockchain through the Web3.js library.

---

## Getting Started

### Step 2: Install Dependencies

Make sure you have **MetaMask** installed and connected to the network where your contract is deployed.

### Step 3: Set up the Contract

1. **Deploy the Smart Contract**: Deploy the `FundAllocationTracker` contract to an Ethereum test network or local network.
2. **Get the Contract Address**: After deploying, copy the contract address.

### Step 4: Update the Contract Address in Frontend

In the frontend JavaScript code (`index.html`), replace the placeholder `YOUR_CONTRACT_ADDRESS` with the address of the deployed contract.

```javascript
const contractAddress = "YOUR_CONTRACT_ADDRESS"; // Replace with your contract's deployed address
```

### Step 5: Run the Frontend

Simply open the `index.html` file in a browser that has **MetaMask** installed.

---

## How to Use

### 1. **Connect MetaMask**

- Click the **"Connect MetaMask"** button on the page.
- Select your MetaMask account to connect to the Ethereum network.

### 2. **Allocate Funds**

- Enter the **recipient address** to which you want to allocate funds.
- Enter the **amount** in Ether that you wish to donate.
- Add a **description** of the allocation (e.g., "For project X").
- Click **"Allocate Funds"** to execute the transaction.

### 3. **Track Allocations**

- Enter the **recipient address** whose allocations you wish to track.
- Click **"Track Allocations"** to see all the allocations made to that address, including the amount, description, and timestamp.

### 4. **View Allocations**

- All allocations will be displayed in a table showing:
  - **Amount**: The amount of funds allocated in Ether.
  - **Description**: The description of the allocation.
  - **Timestamp**: The date and time when the funds were allocated.

---

## How the Smart Contract Works

### Key Functions

- **allocateFunds(address recipient, uint256 amount, string memory description)**: This function allows the contract owner to allocate funds to a specific recipient with a description of the allocation.
- **trackAllocation(address recipient)**: This function allows anyone to view all the allocations made to a specific recipient.

- **Events**:
  - `FundsAllocated(address indexed recipient, uint256 amount, string description, uint256 timestamp)`: Emitted when funds are allocated.
  - `FundsWithdrawn(address indexed owner, uint256 amount)`: Emitted when funds are withdrawn by the contract owner.

---

## Technical Details

- **Smart Contract Language**: Solidity (Version ^0.8.0)
- **Blockchain**: Ethereum (Test networks or Mainnet)
- **Frontend**: HTML, CSS, JavaScript (Web3.js)
- **MetaMask**: Used for interacting with the Ethereum blockchain from the browser.

---

## Troubleshooting

- **MetaMask Not Connecting**: Ensure that MetaMask is properly installed and you're connected to the correct Ethereum network. Refresh the page if necessary.
- **Fund Allocation Not Successful**: Ensure that you're connected with an account that has enough Ether for the transaction.
- **Unable to Track Allocations**: Ensure that the recipient's address has received funds through the contract.

---

## License

This project is open to everyone, allowing access and usage for learning purposes

---

## Contact

For any questions or issues, please feel free to open an issue on the GitHub repository or contact me via email: kalicharan4104@gmail.com
