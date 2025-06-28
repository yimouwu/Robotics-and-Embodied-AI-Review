# 强化学习与新技术结合的最新进展

---

## **强化学习 + 注意力机制**

### **Contrastive Modules with Temporal Attention for Multi-Task Reinforcement Learning**

**内容**:  
论文提出了一种名为 **Contrastive Modules with Temporal Attention (CMTA)** 的新方法，用于解决多任务强化学习中的负迁移问题。

- **关键方法**:
    - **对比学习**: 使模块彼此不同，减少任务间的干扰。
    - **时间注意力**: 在任务级别更细的粒度上组合共享模块，减轻任务内的负迁移。
- **实验结果**:
    - 在 Meta-World 基准测试中性能优于单独学习每个任务。
    - 相较基线方法取得显著性能提升。
      ![img_67.png](../../1/assests/screenshot/screenshotBy12302024/img_67.png)

---

## **强化学习 + Transformer**

### **Real-World Humanoid Locomotion with Reinforcement Learning**

**内容**:  
论文介绍了一种基于强化学习的全学习型方法，用于实现双足机器人在现实世界中的行走。

- **关键方法**:
    - 提出了一个 **因果变换器（causal transformer）控制器**，接收机器人的本体感受观察和动作历史作为输入，预测下一个动作。
    - 在模拟环境中通过大规模无模型强化学习训练，并实现了现实世界的零样本部署。
- **实验结果**:
    - 控制器能够适应不同的户外地形，对抗外部干扰，并根据上下文进行自适应调整。
      ![img_68.png](../../1/assests/screenshot/screenshotBy12302024/img_68.png)

---

## **强化学习 + LLM**

### **Large Language Models Are Semi-Parametric Reinforcement Learning Agents**

**内容**:  
论文提出了一个名为 **REMEMBERER** 的大型语言模型（LLM）基础智能体框架。

- **关键方法**:
    - 为 LLM 配备长期经验记忆，利用过去的经验优化策略。
    - 引入 **经验记忆强化学习（RLEM）**，通过成功和失败的经验更新记忆，无需微调 LLM 参数即可提升能力。  
      ![img_69.png](../../1/assests/screenshot/screenshotBy12302024/img_69.png)

---

## **奖励机制改进**

### **Reward Centering**

**内容**:  
论文提出了一种名为 **奖励中心化（Reward Centering）** 的方法，用于解决连续强化学习问题。

- **关键方法**:
    - 通过减去奖励的实证平均值调整奖励，显著提高折扣方法的性能（尤其在接近 1 的折扣因子下）。
    - 增强算法对奖励常数偏移的鲁棒性。
- **优势**:
    - 简化了值函数逼近器的负担，使其专注于状态和动作之间的相对差异，提高学习效率。
- **理论贡献**:
    - 讨论了奖励中心化的理论基础及其在不同强化学习算法中的应用潜力。
      ![img_70.png](../../1/assests/screenshot/screenshotBy12302024/img_70.png)

---

## **多智能体强化学习**

### **SMACv2: An Improved Benchmark for Cooperative Multi-Agent Reinforcement Learning**

**内容**:  
论文介绍了一个改进版的基准测试 **SMACv2**，用于评估合作型多智能体强化学习（MARL）算法的性能。

- **关键方法**:
    - 在原有的 StarCraft Multi-Agent Challenge（SMAC） 基础上进行了扩展和改进。
    - 增加了新的环境、任务和评估指标。
- **目标**:
    - 提供一个更加全面和挑战性的测试平台，以便更好地理解和比较不同 MARL 算法在复杂、动态的多人合作场景中的表现。
      ![img_71.png](../../1/assests/screenshot/screenshotBy12302024/img_71.png)