# dou-smart-chain
## 项目说明
### 启动
#项目初始化
- 初始化genesis.json  genesis.szz 创世数据. 
  - 创世的eth账号和私钥。
  - 创世默认validator数目(没有真正去质押) 21个，产生的收益直接销毁(可以配置不销毁)，用于后续质押产生块。
  - fixture_test.go 生成enr私钥
- 启动geth, beannode，validator 各一个作为初始节点 (启动指定各种私钥)
- 链接默认初始节点启动剩下的20个geth 、beannode和validator。
- 记录上面5个节点的geth 和 beannode的enr。
- 增加dou smart chain 各种网络配置将enr写死到代码中建新分之作为让后续节点可以直接加入网络。
#新增节点
- 使用新节点分支
- 直接启动eth beannode
- 用staking deposit cli 工具制作质押合约和私钥
   - 用prysm工具将私钥 生成validator钱包
   - 用ethereal 工具执行质押合约
- 启动validator等待eth beannode 和dou chain 同步，等待validator被激活。
