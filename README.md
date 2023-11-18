# dou-smart-chain
## 项目说明
### 启动
#项目初始化
- 初始化genesis.json  genesis.szz 创世数据. (放到github上)
  - 创世的eth账号和私钥。
  - 创世默认validator数目(没有真正去质押) 21个，产生的收益直接销毁(可以配置不销毁)，用于后续质押产生块。
  - fixture_test.go 生成enr私钥
- 启动geth, beannode，validator 各一个作为初始节点 (启动指定各种私钥)    docker_genesis_init_compose 启动1次

- 链接默认初始节点启动剩下的20个geth 、beannode和validator。 docker_genesis_node_compose 启动20次


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
