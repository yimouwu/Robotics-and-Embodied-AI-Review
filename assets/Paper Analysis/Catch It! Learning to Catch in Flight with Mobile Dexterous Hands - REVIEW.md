# 什么？这个男人把机器人钓成翘嘴了！

机器人只能在桌面上抓瓶子？不！在今天的**具身智能指北**里，这只机器人全身上下都在动，还能接住空中飞行的物体~  
这是我们最新的工作 **“Catch It!”**。  
当我们给空中的物体加一个鱼竿，别人钓鱼，我们可以钓机器人了！

---

## **划重点**

### **1. 全身控制移动灵巧捕捉**  
**Whole-Body Control for Mobile Dexterous Catch**  
- 训练了一个统一的控制策略，同时控制移动底座、机械臂和机械手，使它们能够协同工作。  
- 实现了以协调、敏捷和准确的方式捕捉物体。

### **2. 两阶段强化学习框架**  
**Two-Stage RL Framework**  
- 为了处理高维动作空间，提出了一个强化学习框架：  
  - 将物体捕捉任务分为两个子任务。  
  - 每个子任务关注不同的组件，最后再结合在一起，从而提高了训练效率。

### **3. 移动灵巧捕捉的 Sim2Real**  
**Sim2Real for Mobile Dexterous Catch**  
- 在模拟环境中训练控制策略，并确保其与现实世界中机器人的物理和运动学一致性。  
- 利用 Sim2Real 技术，实现了捕捉策略从模拟到真实机器人的**零样本转移**。

---

## **论文信息**

- **论文名**: *Catch It! Learning to Catch in Flight with Mobile Dexterous Hands*  
- **作者列表**: Yuanhang Zhang, Tianhai Liang, Zhenyang Chen, Yanjie Ze, Huazhe Xu  
- **来源**: 清华大学 TEA Lab  
- **仿真环境**: 已开源  

---