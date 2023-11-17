# dou-smart-chain
## 项目说明
### 启动
#项目初始化
1. 初始化genesis.json  genesis.szz 创世数据. 
  1.2 创世的eth账号和私钥。
  1.3 创世默认validator数目(没有真正去质押) 21个，产生的收益直接销毁(可以配置不销毁)，用于后续质押产生块。
2. 启动geth, beannode，validator 各一个作为初始节点
3. 链接默认初始节点启动剩下的20个节点。
4. 记录上面5个节点的geth 和 beannode的enr。
5. 增加dou smart chain 各种网络配置将enr写死到代码中建新分之作为让后续节点可以直接加入网络。
#新增节点
1. 使用新节点分支
2. 直接启动eth beannode
3. 用staking deposit cli 工具制作质押合约和私钥
   3.1 用prysm工具将私钥 生成validator钱包
   3.2 用ethereal 工具执行质押合约
4. 启动validator等待eth beannode 和dou chain 同步，等待validator被激活。
