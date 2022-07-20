import '@nomiclabs/hardhat-ethers';
import '@nomiclabs/hardhat-etherscan';

require('dotenv').config();

export default {
  defaultNetwork: "mainnet",
  networks: {
    hardhat: {
      allowUnlimitedContractSize: false,
    },
    mainnet: {
      accounts: [
        `0x${process.env.PRIVATE_KEY}`
      ],
      chainId: 137,
      gasMultiplier: 20,
      url: "https://polygon-rpc.com/"
    }
  },
  etherscan: {
    apiKey: process.env.ETHERSCAN_API_KEY,
  },
  solidity: {
    version: '0.8.15',
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
}