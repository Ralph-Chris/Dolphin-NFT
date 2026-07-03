## DOLPHIN NFT (DLP)

A standard ERC721 token Built for Dolphin lovers

click to view the [metadata.json](https://gateway.pinata.cloud/ipfs/bafkreifhqohqn24vlxuixa6ctvl7ahzrviz3wf3kkyiyagi2whfw5pcfs4) and [NFT_Image](https://gateway.pinata.cloud/ipfs/bafybeib4kbgtxx4sgudwabqzukqvxbnkeezzliiuh5bamzieqnm2ag5vpm)

## overview

| | | 
|---|---|
| **Name** | Dolphin NFT | 
| **Symbol** | DLP |
| **Standaard** | ERC721 |
|**FrameWork** | Foundry | 

Dolphin NFT is a unique non-fungible token created using foundry and openzeppelin library. Minting is not controlled by any Admin. **Anyone with the contract address can mint NFT_TOKENS and be in full control of it**

## Features
- Full ERC721 compliance
- Built on openzeppelin's audited ERC721 implementation
- Tested with foundry 

## Project Structure 

```
.
├── script/
│   └── DeployDolphin.s.sol
├── src/
│   └── Dolphin.sol
├── test/
│   └── DolphinTest.t.sol
├── foundry.toml
└── README.md
```

## Getting Started 

### prerequisites

- [Foundry](https://book.getfoundry.sh/getting-started/installation)
installed (`forge`, `cast`, `anvil`)
- Git

### Installation

```bash
git clone https://github.com/Ralph-Chris/Dolphin-NFT.git 
forge install openzeppelin/openzeppelin-contracts
```

## Build

```bash
forge build
```

### Testing 

```bash
forge test
```

to Test your contract with ditailed Traces 

```bash
forge test -vvvv
```

### Local Deployment (ANVIL)

start a local node on your terminal:

```bash
anvil
```
NOTE: make sure to run it on **wsl (windows subsystem for linux )** not native windows powershell or CMD


After running Anvil, Run the deployment script in a seperate terminal:

```bash
forge script script/DeployDolphin.s.sol:DeployDolphin --rpc-url http://127.0.0.1:8545 --account <YOUR_PRIVATE_KEY>
```

### Testnet/Mainnet Deployment 

```bash
forge script script/DeployDolphin.s.sol --rpc-url <RPC_URL> --account <YOUR_PRIVATE_KEY> -- broadcast --verify <YOUR_ETHERSCAN_API_KEY>
```
## Interaction With The Deployed Contract Via Terminal

```bash
#mint NFT
cast send <NFT_TOKEN_ADDRESS> "safeMint()" --rpc-url <RPC_URL> --account <YOUR_PRIVATE_KEY>
```

```bash
#Get Token URI
cast send <NFT_TOKEN_ADDRESS> "tokenURI()" 0 --rpc-url <RPC_URL> --account <YOUR_PRIVATE_KEY>
```

```bash
#Get Owner Of Any Token ID
cast send <NFT_TOKEN_ADDRESS> "ownerOf()" 0 --rpc-url <RPC_URL> --account <YOUR_PRIVATE_KEY>
```
## License

This project is licensed under the MIT License

## Author 

Built by [RalphChris](https://github.com/Ralph-Chris).
