# 1. HelloWorld.sol

# forge create HelloWorld --rpc-url=$RPC_URL --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 
# cast call 0xE5E05bD34B29750dAb38FeEC1B5B1ea7617498e5 "greet() (string)"  --private-key=$PRIVATE_KEY --rpc-url=$RPC_URL

# 2. FirstApp.sol

# forge create FirstApp --rpc-url=$RPC_URL --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 
# cast  send 0xC8b2AAA3B4Ec55A3D9F1e0f43c20c2551D52d75b "dec()"  --private-key=$PRIVATE_KEY --rpc-url=$RPC_URL
# cast call 0xC8b2AAA3B4Ec55A3D9F1e0f43c20c2551D52d75b "count() (uint)"  --private-key=$PRIVATE_KEY --rpc-url=$RPC_URL
# cast call 0xC8b2AAA3B4Ec55A3D9F1e0f43c20c2551D52d75b "get() (uint)"  --private-key=$PRIVATE_KEY --rpc-url=$RPC_URL

# 3. Primitive Data Types

# forge create PrimitiveDataTypes --rpc-url=$RPC_URL --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 
# cast call 0xFca52e4C4251db44ED1231e16B3D7CF1028b88Ff "minInt() (int)" --private-key=$PRIVATE_KEY --rpc-url=$RPC_URL
# cast call 0xFca52e4C4251db44ED1231e16B3D7CF1028b88Ff "defaultAddr() (address)" --private-key=$PRIVATE_KEY --rpc-url=$RPC_URL

# 4 Maps

# forge create  Mapping  --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 
# cast send 0x6B28bAED816596f62658BC079a747B09Af327530 "set(address,uint)" 0x6B28bAED816596f62658BC079a747B09Af327530 125 --rpc-url=$RPC_URL --private-key=$PRIVATE_KEY
# cast call 0x6B28bAED816596f62658BC079a747B09Af327530 "get(address) (uint)" 0x6B28bAED816596f62658BC079a747B09Af327530 --rpc-url=$RPC_URL
# cast send 0x6B28bAED816596f62658BC079a747B09Af327530 "remove(address)" 0x6B28bAED816596f62658BC079a747B09Af327530  --rpc-url=$RPC_URL --private-key=$PRIVATE_KEY
# cast call 0x6B28bAED816596f62658BC079a747B09Af327530 "get(address) (uint)" 0x6B28bAED816596f62658BC079a747B09Af327530 --rpc-url=$RPC_URL

# 5. Nested Maps

# forge create  NestedMapping   --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 
# cast call 0xF636347A033C01D7892688E3DE88d040e4a6DA90 "get(address,uint) (bool)" 0x6B28bAED816596f62658BC079a747B09Af327530 18 --rpc-url=$RPC_URL
# cast send 0xF636347A033C01D7892688E3DE88d040e4a6DA90 "set(address,uint,bool)" 0x6B28bAED816596f62658BC079a747B09Af327530 125 true --rpc-url=$RPC_URL --private-key=$PRIVATE_KEY
# cast call 0xF636347A033C01D7892688E3DE88d040e4a6DA90 "get(address,uint) (bool)" 0x6B28bAED816596f62658BC079a747B09Af327530 125 --rpc-url=$RPC_URL

# cast send 0xF636347A033C01D7892688E3DE88d040e4a6DA90 "set(address,uint,bool)" 0x6B28bAED816596f62658BC079a747B09Af327530 129 true --rpc-url=$RPC_URL --private-key=$PRIVATE_KEY

# cast call 0xF636347A033C01D7892688E3DE88d040e4a6DA90 "get(address,uint) (bool)" 0x6B28bAED816596f62658BC079a747B09Af327530 125 --rpc-url=$RPC_URL
# cast call 0xF636347A033C01D7892688E3DE88d040e4a6DA90 "get(address,uint) (bool)" 0x6B28bAED816596f62658BC079a747B09Af327530 129 --rpc-url=$RPC_URL
# cast call 0xF636347A033C01D7892688E3DE88d040e4a6DA90 "get(address,uint) (bool)" 0x6B28bAED816596f62658BC079a747B09Af327530 130 --rpc-url=$RPC_URL

# 6 Arrays

# forge create  Array --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 
# cast call 0x522e581A3Dd8C2afCE88284c7d214ce9183CaD9C "getLength() (uint)" --rpc-url=$RPC_URL
# cast send 0x522e581A3Dd8C2afCE88284c7d214ce9183CaD9C "push(uint)" 14 --rpc-url=$RPC_URL --private-key=$PRIVATE_KEY
# cast call 0x522e581A3Dd8C2afCE88284c7d214ce9183CaD9C "getLength() (uint)" --rpc-url=$RPC_URL
# cast send 0x522e581A3Dd8C2afCE88284c7d214ce9183CaD9C "pop()"  --rpc-url=$RPC_URL --private-key=$PRIVATE_KEY
# cast call 0x522e581A3Dd8C2afCE88284c7d214ce9183CaD9C "getLength() (uint)" --rpc-url=$RPC_URL

# 7 Arrays remove element by shifting

# forge create ArrayRemoveByShifting --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 
# cast send 0x6430E23AFE8B84Fa99AEDCc3f1b219e424444C6a "test()" --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY
# cast call 0x6430E23AFE8B84Fa99AEDCc3f1b219e424444C6a "arr(uint256)(uint256)" 1 --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY

# 8 Enum
# ARGS=" --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY "
# VERIFY=" --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? "
#forge create Enum --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 

# cast call 0x63cBCBca4B5Af0994B8B578C9d29a3986a333291 "get() (uint)" $ARGS
# cast send 0x63cBCBca4B5Af0994B8B578C9d29a3986a333291 "set(uint8)" 3 $ARGS
# cast send 0x63cBCBca4B5Af0994B8B578C9d29a3986a333291 " cancel()"  $ARGS

# cast send 0x63cBCBca4B5Af0994B8B578C9d29a3986a333291 "reset()"  $ARGS
# cast call 0x63cBCBca4B5Af0994B8B578C9d29a3986a333291 "get() (uint8)" $ARGS

# 9. Structs

# forge create ICounter --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 

# forge create Todos --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 

# 10. Events
# forge create Event --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 
# cast send 0x6fB52ae5870afc9036b5740cc8a83EAee24Aa468 "emitEvents()"  $ARGS

# cast logs --from-block 1026117 --to-block latest 'Log(address indexed sender, string message)' 0x6fB52ae5870afc9036b5740cc8a83EAee24Aa468 --rpc-url=$RPC_URL

# 11. Visibility
# forge create Child  --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\?

# 12 Counter
# forge create Counter  --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\?
# 0x2d3cEdbcc241166D5e60196e058FF1D781C0F76b

# forge create MyContract  --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\?
# 0xD72d93a7124d04333c8237283AbE89B1f8A63B02

#forge create ICounter --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 

# cast call 0xD72d93a7124d04333c8237283AbE89B1f8A63B02 "getCount(address) (uint)" 0x2d3cEdbcc241166D5e60196e058FF1D781C0F76b $ARGS

# 13 Payable


#forge create Payable  --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\?

# cast send 0x0D0312153Bd74AB53a95AaA4a7B4bbA59a7BdB37 "deposit()" --value 0.5ether $ARGS

# ARGS=" --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY "

#cast send 0x0D0312153Bd74AB53a95AaA4a7B4bbA59a7BdB37 "withdraw()" $ARGS
#cast balance 0x0D0312153Bd74AB53a95AaA4a7B4bbA59a7BdB37 --rpc-url=$RPC_URL


# forge create CounterBytes  --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\?
# 0x1f71aC72F89953e4d61b05Ccb74e297fD2a8964a

# forge create FallbackInputOutput --constructor-args 0x1f71aC72F89953e4d61b05Ccb74e297fD2a8964a --rpc-url=$RPC_URL --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\?
# 0xD9e3a66B56612b89AeefB872dD1Ea43AbF70d59b

# forge create TestFallbackInputOutput  --rpc-url=$RPC_URL   --private-key=$PRIVATE_KEY  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\?
# 0x424356CE50e308dFBa217ab75A4014D2e60269b2

# cast send 0x10cf6D2B44be0cA0688b416E82E656F09A93904b "test(address, bytes calldata)" $(cat callbytes.txt)  $ARGS

# forge create Car --constructor-args 0xc Telsa --rpc-url=$RPC_URL   --private-key=$( gpg --decrypt ~/key.env.gpg)   --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 
# forge create Import  --rpc-url=$RPC_URL   --private-key=$( gpg --decrypt ~/key.env.gpg)   --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 

# forge script script/SolidityByExample.s.sol --rpc-url $RPC_URL --private-key $( gpg --decrypt ~/key.env.gpg) --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? --broadcast

# forge script script/SolidityByExample.s.sol --rpc-url $ANVIL_RPC --private-key $ANVIL_KEY --broadcast

# forge create Exchange --rpc-url=$RPC_URL --constructor-args 0xe74A77e6579D1BD15d7e63E9628428C5832fb864 --private-key=$( gpg --decrypt ~/key.env.gpg)  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 

#forge create src/factory.sol:UniswapV2Factory --constructor-args 0xc3e32792653620f5F218db3F9A3925723E40B1c7   --rpc-url=$RPC_URL --private-key=$( gpg --decrypt ~/key.env.gpg)   
#forge script script/hack.s.sol --rpc-url $RPC_URL --private-key $( gpg --decrypt ~/key.env.gpg) --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? --broadcast


#forge create src/factory.sol:UniswapV2Factory --constructor-args 0xc   --rpc-url=$RPC_URL --private-key=$( gpg --decrypt ~/key.env.gpg) 

# forge script script/Vault.s.sol --rpc-url=$RPC_URL --private-key $( gpg --decrypt ~/key.env.gpg) --verify --verifier blockscout --verifier-url https://blockscoutapi.katla.taiko.xyz/api\? --broadcast

# forge create SimpleStorage  --rpc-url=$RPC_URL --private-key $( gpg --decrypt ~/key.env.gpg)  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 
# forge create Token --rpc-url=$SATOSHI_EVM_RPC --private-key $( gpg --decrypt ~/key.env.gpg) 

# forge create Coin  --rpc-url=$RPC_URL --private-key $( gpg --decrypt ~/key.env.gpg)  --verify --verifier blockscout --verifier-url https://blockscoutapi.katla.taiko.xyz/api\? 

# forge create SimpleStorage  --rpc-url=$RPC_URL --private-key $( gpg --decrypt ~/key.env.gpg)  --verify --verifier blockscout --verifier-url https://blockscoutapi.jolnir.taiko.xyz/api\? 

# forge script script/SolidityByExample.s.sol --rpc-url $ANVIL_RPC --private-key $ANVIL_KEY --broadcast

# forge create ExampleContract --rpc-url $ANVIL_RPC --private-key $ANVIL_KEY 

#forge create ExampleContract  --rpc-url=$RPC_URL --private-key $( gpg --decrypt ~/key.env.gpg)  --verify --verifier blockscout --verifier-url https://blockscoutapi.katla.taiko.xyz/api\? 
#forge create ExampleContract  --rpc-url=$RPC_URL --private-key $( gpg --decrypt ~/key.env.gpg)  --verify --verifier blockscout --verifier-url https://blockscoutapi.katla.taiko.xyz/api\? 
#forge create ExampleContract  --rpc-url=$RPC_URL --private-key $( gpg --decrypt ~/key.env.gpg)  --verify --verifier blockscout --verifier-url https://blockscoutapi.katla.taiko.xyz/api\? 
#forge create ExampleContract  --rpc-url=$RPC_URL --private-key $( gpg --decrypt ~/key.env.gpg)  --verify --verifier blockscout --verifier-url https://sepolia.explorer.mode.network/api\?

# forge create Coin  --rpc-url=$RPC_URL --private-key $( gpg --decrypt ~/key.env.gpg)  --verify --verifier blockscout --verifier-url https://sepolia.explorer.mode.network/api\? 


forge create AddFiveStorage --rpc-url=https://testnet-rpc.plumenetwork.xyz/http   --private-key=$( gpg --decrypt ~/key.env.gpg)  --verify --verifier blockscout --verifier-url https://testnet-explorer.plumenetwork.xyz/api\?



