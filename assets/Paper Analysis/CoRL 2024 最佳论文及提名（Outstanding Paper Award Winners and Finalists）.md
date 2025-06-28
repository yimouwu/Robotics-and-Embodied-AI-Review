# CoRL 2024 最佳论文及提名总结

## **会议背景**

2024 年 11 月 6 日至 9 日，德国慕尼黑举办了 **Conference on Robot Learning (CoRL)**，本次会议聚焦 **扩散模型** 和 *
*大模型在机器人上的应用**。以下是两篇获得 **Best Paper** 的文章和四篇提名文章的详细介绍。

---

## **最佳论文**

### *

*1. [PoliFormer: Scaling On-Policy RL with Transformers Results in Masterful Navigators](https://poliformer.allen.ai)**

**机构**: Allen Institute for AI

#### **研究背景**

强化学习（RL）被广泛应用于训练机器人代理以完成室内导航任务。然而，传统方法依赖浅层 GRU 架构，难以解决复杂任务如目标导航（ObjectNav），且深度模型（如
Transformer）带来训练不稳定和高计算成本问题。  
![img_91.png](../../1/assests/screenshot/screenshotBy12302024/img_91.png)

#### **主要贡献**

1. **提出 PoliFormer 架构**
    - 基于 Transformer 的 RL 模型，采用视觉 Transformer 编码器和因果 Transformer 解码器，提供长时记忆和推理能力。
2. **优化训练效率**
    - 利用多节点并行环境交互和大批量训练，实现高效模拟训练。
3. **实现扩展性与真实环境适配**
    - 在多个导航基准上取得 SOTA 性能，并支持无微调的真实环境应用。  
      ![img_92.png](../../1/assests/screenshot/screenshotBy12302024/img_92.png)

#### **实验方法与结果**

- **模拟环境测试**:  
  在 CHORES-S 和 ProcTHOR 基准测试中，PoliFormer 在 ObjectNav 任务中成功率达到 **85.5%**，比当前最佳模型提高 **28.5%**。
- **实际环境验证**:  
  在 LoCoBot 和 Stretch RE-1 上无微调测试，成功率分别超越基准模型 **13.3%** 和 **33.3%**。
- **模型扩展性测试**:  
  提出 PoliFormer-BOXNAV，可接受目标边界框作为输入，实现零样本多目标导航和物体跟踪任务。  
  ![img_93.png](../../1/assests/screenshot/screenshotBy12302024/img_93.png)

---

### **2. One Model to Drift Them All: Physics-Informed Conditional Diffusion Model for Driving at the Limits**

**机构**: Toyota Research Institute, Rensselaer Polytechnic Institute

#### **研究背景**

现有的自动驾驶技术多局限于低极限操作。在极限驾驶条件下（如湿滑路面），轮胎抓地力饱和使控制问题变得复杂，且高成本极限数据难以收集。本文提出了
**物理启发的条件扩散模型**，通过未标注轨迹数据捕获车辆和环境的复杂分布，嵌入到非线性控制框架中。  
![img_94.png](../../1/assests/screenshot/screenshotBy12302024/img_94.png)

#### **主要贡献**

1. **开发条件扩散车辆模型**
    - 通过预测物理驱动的神经随机微分方程（SDE）参数，适应不同车辆和路况。
2. **实现多模态分布建模**
    - 捕获车辆模型参数的复杂分布，适应不同条件。
3. **实时在线适应能力**
    - 通过控制环集成扩散模型，进行自主漂移操作。  
      ![img_95.png](../../1/assests/screenshot/screenshotBy12302024/img_95.png)

#### **实验方法与结果**

- **多模态适应能力测试**:  
  在 Lexus 加速与漂移数据中，模型能在轮胎摩擦力不确定条件下准确预测参数。
- **不同轮胎条件下的在线适应性**:  
  模型在闭环跟踪中适应不同轮胎特性，表现出与专家模型相当的精度，同时更具适应性。
- **多场景漂移性能**:  
  在 Toyota Supra 和 Lexus LC500 的测试中，模型在非数据集轨迹上保持高性能，展示了滑行和漂移任务的通用性。

---

## **提名论文**

### **3. [Re-Mix: Optimizing Data Mixtures for Large Scale Imitation Learning](https://github.com/jhejna/remix)**

**机构**: Stanford University, UC Berkeley  
![img_96.png](../../1/assests/screenshot/screenshotBy12302024/img_96.png)

#### **研究背景**

机器人模仿学习依赖大规模、多域数据集，但异质性数据（不同状态空间、动作空间、环境动态）难以直接优化模型性能。本文提出了 **Re-Mix
** 方法，通过分布鲁棒优化（DRO）自动调整子域权重，确保下游任务性能。

#### **主要贡献**

1. **提出 Re-Mix 方法**
    - 基于 DRO 的权重优化，提升模仿学习模型的泛化能力。
2. **引入动作归一化与离散化**
    - 标准化子域动作分布，确保训练平衡。
3. **验证性能提升**
    - 在 Bridge V2 和 Open-X 数据集上显著提升成功率，超过均匀权重和专家调整权重。

#### **实验方法与结果**

- **行为克隆损失优化测试**:  
  在 WidowX 和 Franka 机器人任务中，Re-Mix 优化权重成功率比均匀权重高 **38%**，比专家权重高 **32%**。
- **数据子集化实验**:  
  在保留 25% 数据情况下，Re-Mix 性能接近全数据集，显著优于均匀或专家权重。

---

### **4. [OpenVLA: An Open-Source Vision-Language-Action Model](https://openvla.github.io)**

**机构**: Stanford University, UC Berkeley, Toyota Research Institute, Google Deepmind, MIT  
![img_97.png](../../1/assests/screenshot/screenshotBy12302024/img_97.png)
**机构**: Stanford University, UC Berkeley, Toyota Research Institute, Google Deepmind, Physical Intelligence,

**MIT项目链接**: https://openvla.github.io
![img_98.png](../../1/assests/screenshot/screenshotBy12302024/img_98.png)

#### **研究背景**

视觉-语言-动作（VLA）模型在多任务机器人控制中表现出色，但现有模型（如 RT-2-X）多为闭源，难以高效适配新任务且硬件需求高。本文提出
**OpenVLA**，一个开源的 7B 参数 VLA 模型，支持多机器人控制与高效微调。

#### **主要贡献**

1. **开发 OpenVLA 模型**
    - 开源通用机器人操作策略模型，显著超越闭源模型 RT-2-X。
2. **实现高效微调机制**
    - 通过 LoRA 和量化技术，在消费级 GPU 上实现高效微调。
3. **开放模型权重与代码**
    - 提供模型检查点、微调笔记本和 PyTorch 代码库。

#### **实验方法与结果**

- **多机器人平台测试**:  
  在 WidowX 和 Google Robot 平台上，OpenVLA 在 29 项任务中成功率比 RT-2-X 高 **16.5%**。
- **微调测试**:  
  在 Franka-Tabletop 任务中，通过 LoRA 微调，OpenVLA 显著优于从头训练的 Diffusion Policy 和 Octo 模型。

---

### **5. HumanPlus: Humanoid Shadowing and Imitation from Humans**

**机构**: Stanford University  
![img_99.png](../../1/assests/screenshot/screenshotBy12302024/img_99.png)

#### **研究背景**

现有机器人模仿学习方法受限于形态差异与硬件需求，难以实现对人类复杂动作的实时跟随。本文提出 **HumanPlus 系统**，通过单一 RGB
摄像头和低成本控制实现人类全身动作的实时跟随与模仿。  
![img_100.png](../../1/assests/screenshot/screenshotBy12302024/img_100.png)

#### **主要贡献**

1. **开发 HumanPlus 系统**
    - 实现实时全身动作影随与模仿学习。
2. **提出 Humanoid Shadowing Transformer**
    - 使用 40 小时人类运动数据训练，支持复杂任务模仿。
3. **设计 Humanoid Imitation Transformer**
    - 支持多任务模仿学习，如穿鞋、折叠衣物等。

#### **实验方法与结果**

- **动作影随实验**:  
  在 33 自由度人形机器人上成功实时跟随多种人类动作。
- **技能模仿实验**:  
  在多任务中成功率达到 **60%-100%**，显著优于基准系统。

---

### **6. Equivariant Diffusion Policy**

**机构**: Northeastern University, Boston Dynamics AI Institute

#### **研究背景**

扩散策略方法在模仿学习中表现出色，但难以处理几何对称性任务，且降噪函数学习复杂，数据效率低。本文提出 **Equivariant Diffusion
Policy**，利用任务对称性（SO(2)对称性）提高效率与泛化能力。

#### **主要贡献**

1. **提出 Equivariant Diffusion Policy**
    - 嵌入任务几何对称性，简化降噪函数学习。
2. **分析 SO(2) 对称性应用**
    - 提供理论支持，提高多对称场景泛化性能。
3. **验证数据效率提升**
    - 在低数据条件下显著提高成功率。  
      ![img_101.png](../../1/assests/screenshot/screenshotBy12302024/img_101.png)

#### **实验方法与结果**

- **MimicGen 模拟实验**:  
  在包含12项任务的MimicGen基准测试中，Equivariant Diffusion Policy以绝对位置控制方式进行评估。结果显示，在100个示例的低数据情境下，该方法的平均成功率比原始Diffusion
  Policy高21.9%。在200个示例的条件下，其表现超越了其他方法在1000个示例时的性能，表明该方法在数据效率方面的优势。
- **不同对称性水平下的性能测试**:
  将任务分为高、中、低三种对称性水平，测试结果表明，在高对称性任务中，Equivariant Diffusion
  Policy的性能提升最显著，而在低对称性任务中，依然保持了良好的鲁棒性和泛化能力。
- **真实机器人实验**:  
  在Franka Emika机械臂平台上进行的六项实际操作任务（如开烤箱门、整理垃圾、烘焙面包圈等）中，Equivariant Diffusion
  Policy仅通过20至60次示例学习，即达到了80%以上的成功率，而基准方法在相同任务中的成功率大幅低于本方法。

---