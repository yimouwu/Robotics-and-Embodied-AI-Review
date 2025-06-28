# 清华大学交叉信息院最新研究：**Data Scaling Laws In Imitation Learning for Robotic Manipulation**

本文深入研究了机器人技术（尤其是机器人操作）中是否存在数据Scaling
Laws，通过收集大量环境和对象的数据，研究了策略的泛化性能如何随着训练环境、对象和演示的数量而变化，有很多重磅发现！代码刚刚开源！
单位：清华大学, 上海期智, 上海AI Lab
论文标题《Data Scaling Laws in Imitation Learning for Robotic Manipulation》

---

该研究表明，通过适当的数据扩展，单任务策略可以很好地推广到**任何新环境**和**同一类别中的任何新对象**。

---
![img_31.png](../../1/assests/screenshot/screenshotBy12302024/img_31.png)

## **重要结论📕**

### **1. Simple power laws**

- 策略对新对象、新环境或两者的泛化能力分别与以下内容呈幂律关系：
    - 训练对象的数量
    - 训练环境的数量
    - 训练环境-对象对的数量

### **2. Diversity is all you need**

- **增加环境和物体的多样性**，比仅增加每个环境或物体的绝对演示次数更有效。

### **3. Generalization is easier than expected**

- 在尽可能多的环境中收集数据（例如 32 个环境），每个环境有一个独特的操作对象和 50 个演示，能够训练出一个策略：
    - **成功率高达 90%**
    - 能很好地泛化到任何新环境和新对象。

---

## **具体内容**

### **1. 对象泛化**（图二）

- 评估策略在新对象上的表现。

### **2. 环境泛化**（图三）

- 测试策略在新环境中的性能。

### **3. 环境-对象共同泛化**（图四）

- 探讨策略在新环境和新对象同时变化时的泛化能力。

### **4. Power Law 幂律**（图五）

- **虚线**表示幂律拟合，其方程式见图例。
- **所有轴为对数刻度**。
- **相关系数 r**：策略泛化能力与对象、环境以及环境-对象对的数量之间呈幂律关系。

### **5. 演示次数与策略表现的关系**（图六）

- 收集大量演示次数后，检查策略表现是否与演示总数呈幂律关系：
    - 倒水的相关系数为 **-0.62**。
    - 鼠标排列的相关系数为 **-0.79**。
    - 结果表明仅存在**弱幂律关系**。

### **6. 环境-对象 pair 的变化**（图七）

- 策略性能随着演示总数的增加而提升，但会逐渐达到**饱和**。

---

## **局限性**

1. **单任务策略**：
    - 研究专注于单任务策略的数据扩展，而非探索任务级泛化。

2. **模仿学习限制**：
    - 研究仅关注模仿学习中的数据缩放，未涉及强化学习（RL）。
    - RL 可能会进一步增强策略能力。

3. **UMI 数据收集的误差**：
    - 使用 UMI 进行数据收集会在演示中引入固有的小错误。
    - 此外，仅使用扩散策略算法对数据进行建模。

---
![img_31.png](../../1/assests/screenshot/screenshotBy12302024/img_31.png)
![img_32.png](../../1/assests/screenshot/screenshotBy12302024/img_32.png)
![img_33.png](../../1/assests/screenshot/screenshotBy12302024/img_33.png)
![img_34.png](../../1/assests/screenshot/screenshotBy12302024/img_34.png)
![img_35.png](../../1/assests/screenshot/screenshotBy12302024/img_35.png)
![img_36.png](../../1/assests/screenshot/screenshotBy12302024/img_36.png)
![img_37.png](../../1/assests/screenshot/screenshotBy12302024/img_37.png)