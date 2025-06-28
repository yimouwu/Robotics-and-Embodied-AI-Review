# 持续学习领域最新研究与进展

---

## **论文 1: [Nature] Loss of Plasticity in Deep Continual Learning**

**深度持续学习中的塑性丧失**  
**作者**: Shibhansh Dohare, J. Fernando Hernandez-Garcia, Qingfeng Lan, Parash Rahman, A. Rupam Mahmood, Richard S.
Sutton

### **方法**

1. **标准深度学习方法**
    - 使用经典的 ImageNet 数据集和强化学习问题，展示深度学习在持续学习设置中的塑性逐渐丧失。
2. **持续反向传播算法（Continual Backpropagation）**
    - 通过持续随机重新初始化一小部分使用较少的单元，维持网络的多样性和塑性。
3. **损失塑性测试**
    - 测量网络在新任务上的学习能力，通过多个任务训练与评估，评估塑性损失程度。  
      ![img_77.png](../../1/assests/screenshot/screenshotBy12302024/img_77.png)

### **创新点**

1. **塑性损失现象**
    - 系统性展示了标准深度学习方法在持续学习设置中逐渐失去塑性，学习效果甚至不如浅层网络。
2. **持续反向传播算法**
    - 通过随机重置部分单元，维持网络长期学习性能。
3. **塑性损失的解决方案**
    - 证明梯度下降方法不足以维持塑性，需引入随机非梯度组成部分来保持变异性和塑性。
      ![img_78.png](../../1/assests/screenshot/screenshotBy12302024/img_78.png)

---

## **论文 2: Computationally Budgeted Continual Learning: What Does Matter?**

**计算预算的持续学习：什么才是重要的？**  
**作者**: Ameya Prabhu, Hasan Abed Al Kader Hammoud, Puneet Dokania, Philip H.S. Torr, Ser-Nam Lim, Bernard Ghanem, Adel
Bibi

### **方法**

1. **计算预算限制**
    - 在每次时间步长中施加固定计算预算，模拟实际应用中的计算和时间限制。
2. **多种数据流设置**
    - 在数据增量、类别增量和时间增量设置中评估不同的持续学习策略。
3. **传统 CL 方法的性能比较**
    - 评估采样策略、蒸馏损失和部分微调等方法的性能。  
      ![img_79.png](../../1/assests/screenshot/screenshotBy12302024/img_79.png)

### **创新点**

1. **计算预算的现实考量**
    - 将计算预算作为持续学习研究的核心考量，更贴近实际应用场景。
2. **大规模基准测试**
    - 在两个大规模数据集上的实验，全面分析传统 CL 方法的性能。
3. **简化方法的有效性**
    - 发现基于经验回放的简单方法（Naive）优于复杂 CL 方法，挑战了现有方法的有效性。
      ![img_80.png](../../1/assests/screenshot/screenshotBy12302024/img_80.png)

---

## **论文 3: [CVPR] Boosting Continual Learning of Vision-Language Models via Mixture-of-Experts Adapters**

**通过专家混合适配器提升视觉-语言模型的持续学习能力**  
**作者**: Jiazuo Yu, Yunzhi Zhuge, Lu Zhang, Ping Hu, Dong Wang, Huchuan Lu, You He

### **方法**

1. **动态扩展预训练 CLIP 模型**
    - 集成响应新任务的专家混合（MoE）适配器，动态扩展预训练的 CLIP 模型。
2. **分布判别自动选择器（DDAS）**
    - 自动将输入分配给 MoE 适配器或原始 CLIP，以分别处理分布内和分布外的输入。
3. **增量激活-冻结策略**
    - 通过激活和冻结适配器帮助专家学习任务内知识，促进任务间合作。  
      ![img_81.png](../../1/assests/screenshot/screenshotBy12302024/img_81.png)

### **创新点**

1. **参数效率框架**
    - 提出了一个参数高效的持续学习框架，增强了模型适应性和效率。
2. **增量激活-冻结策略**
    - 使专家能够同时学习任务内知识并进行任务间合作。
3. **分布判别自动选择器（DDAS）**
    - 自动子流分配融合了抗遗忘和零样本转移能力。
      ![img_82.png](../../1/assests/screenshot/screenshotBy12302024/img_82.png)

---

## **论文 4: A Comprehensive Survey of Continual Learning: Theory, Method and Application**

**持续学习全面综述：理论、方法与应用**  
**作者**: Liyuan Wang, Xingxing Zhang, Hang Su, Jun Zhu

### **方法**

1. **基本设置**
    - 介绍持续学习的基本公式化、典型场景和评估指标。
2. **理论基础**
    - 总结稳定性-可塑性权衡和泛化性分析等理论研究。
3. **代表性方法**
    - 提供最新详尽分类，分析代表性方法如何实现持续学习目标。
4. **实际应用**
    - 描述方法如何适应场景复杂性和任务特异性等实际挑战。  
      ![img_83.png](../../1/assests/screenshot/screenshotBy12302024/img_83.png)

### **创新点**

1. **系统性总结**
    - 首次系统性总结持续学习的最新进展，包括理论、方法和应用。
2. **全面视角**
    - 提供全面视角，促进该领域后续探索。
3. **交叉方向前景**
    - 讨论持续学习的当前趋势、跨方向前景以及与神经科学的跨学科联系。
      ![img_84.png](../../1/assests/screenshot/screenshotBy12302024/img_84.png)