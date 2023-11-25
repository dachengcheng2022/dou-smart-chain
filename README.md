# dou-smart-chain
## 项目说明
### 启动
#项目初始化
- 初始化genesis.json  genesis.szz 创世数据. 
  - 老板提供地址修改genesis.json 的账号地址和合约地址
  - 生成默认的3个validator的质押合约和账号及密码。create_constract_key_store.sh
  - 初始化beacon 和geth 。clean_and_init.sh
  - 启动geth。start_genesis_enode.sh
  - 启动beacon。start_genesis_bnode.sh
  - 启动beacon。start_genesis_vnode.sh
  - 制作docker_genesis_init_compose
  
- 修改代码文件：
  - eth： var MainnetBootnodes = []string{} 为上面节点
  - eth： MainnetChainConfig = &ChainConfig{}
  - eth:  MainnetGenesisHash 
  - bnode: var mainnetBeaconConfig = &BeaconChainConfig{}

- 链接默认初始节点启动剩下的6个geth 、beannode和validator。 docker_genesis_node_compose 启动6次
  - 生成默认的3个validator的质押合约和账号及密码。create_constract_key_store.sh
  - 启动geth。start_enode.sh
  - 启动beacon。start_bnode.sh
  - 启动beacon。start_vnode.sh
  - 制作docker_init_compose


- 记录上面5个节点的geth 和 beannode的enr。
- 增加dou smart chain 各种网络配置将enr写死到代码中建新分之作为让后续节点可以直接加入网络。
#新增节点
- 使用新节点分支
- 直接启动eth beannode
- 用staking deposit cli 工具制作质押合约和私钥
   - 用prysm工具将私钥 生成validator钱包
   - 用ethereal 工具执行质押合约
- 启动validator等待eth beannode 和dou chain 同步，等待validator被激活。

##目录说明
- config 项目配置文件静态文件。
  - direct 放置validator的账号
  - keystore 是eth账号
  - validator_keys 质押数据和私钥
  - account_password 解密keystore的密码
  - config.yml beacon 配置文件
  - config_deposit.yml 是生成质押合约的配置文件
  - genesis.json 是原始的创世文件。
  - geth_password.txt 解密keystore的密码
  - jwtsecret beacon和eth 交互的密码
  - mnemonic.txt 是生成质押合约和私钥的助记词
  - sk.json
  - wallet_password.txt validator的钱包密码
- data 存放geth beacon validator 数据
- ethereal 调用geth客户端执行质押合约工具
- ethpos-docker 部署测试网络脚本
- go-ethereum geth源码使用branch v1.13.4
- prysm beacon 和validator 源码使用 branch release-v4.1.1
- staking-deposit-cli  生成质押合约和相关密钥


#项目说明
添加子模块：git submodule add <path>
拉取项目：  git clone <path>    
拉取子模块：git submodule update --init --recursive
删除子模块： 
git submodule deinit -f submodule
git rm -f <子模块路径>
rm -rf .git/modules/<子模块路径>
