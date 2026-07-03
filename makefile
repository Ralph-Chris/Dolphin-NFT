include .env
.PHONY: all deploy-anvil deploy-sepolia test 

all: clean update

test:; forge test 

clean:; forge clean

update:; forge update



deploy-anvil:
	@forge script script/DeployDolphin.s.sol:DeployDolphin --rpc-url http://127.0.0.1:8545 --account <YOUR_PRIVATE_KEY> --broadcast

deploy-sepolia:
	@forge script script/DeployDolphin.s.sol:DeployDolphin --rpc-url <YOUR_AWS_API_KEY> --account <YOUR_PRIVATE_KEY --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY)

#========================================
# If you are running the ** make mint** command on a testnet then you sould replace the rpc-url with your AWS api key
#========================================

mint:
	@cast send <CONTRACT_ADDRESS> "safeMint()" --rpc-url http://127.0.0.1.8545 --account <YOUR_PRIVATE_KEY>