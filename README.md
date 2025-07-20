<h1 align="center">Robotics-and-Embodied-AI-Review</h1>

<p align="center">
  <strong>机器人学与具身智能学习综述库</strong><br>
  Robotics and Embodied AI Guide, Learning Resources, Course Materials, Daily Paper Reviews, Awesome Blogs...
</p>


> 这是一个专注于机器人学与具身智能领域的综述库。包括领域入门指南、领域论文综述、教授/博主分享的优质资源等。
希望初学者可以通过本仓库快速建立关于相关领域的认知, 也希望能为大佬们提供些文献阅读上的便利～ 欢迎点Star、分享与提PR🌟~<br>【 <a href="https://github.com/yimouwu/Robotics-and-Embodied-AI-Review">Robotics-and-Embodied-AI-Review</a>, Latest Update: Jul. 1, 2025 】<img alt="GitHub repo stars" src="https://img.shields.io/github/stars/yimouwu/Robotics-and-Embodied-AI-Review"> ![Visitors](https://api.visitorbadge.io/api/visitors?path=https%3A%2F%2Fgithub.com%2Fyimouwu%2FRobotics-and-Embodied-AI-Review&label=Daily%20Visitors&labelColor=%234ccce4&countColor=%23d9e3f0) <img src="https://img.shields.io/badge/MIT-License-green.svg" alt="license">





# Contents - 目录
<nav>
<ul>
  <li><a href="#links">0. Useful Info - 优质资源链接</a></li>
  
  <li><a href="#research-areas-guide">1. Research Areas Guide - 研究领域入门指南</a>
    <ul>
      <li><a href="#Fundamentals-of-Robotics">1.1 Fundamentals of Robotics - 机器人学基础</a></li>
      <ul>
        <li><a href="#Markovian-Decision-Process">1.1.1 Introduction - 基本概念入门</a></li>
        <li><a href="#Mathematical-Concepts-and-Spatial-Transformation">1.1.2 Mathematical Concepts and Spatial Transformation - 数学概念与空间转换</a></li>
        <li><a href="#Forward-Kinematics">1.1.3 Forward Kinematics - 正向运动学</a></li>
        <li><a href="#Inverse-Kinematics">1.1.4 Inverse Kinematics - 逆向运动学</a></li>
        <li><a href="#Velocity-Kinematics">1.1.5 Velocity Kinematics - 速度运动学</a></li>
      </ul>
      <li><a href="#Control">1.2 Control - 控制</a></li>
      <ul>
        <li><a href="#Control-Concepts">1.2.1 Concepts - 概念与术语</a></li>
        <li><a href="#Control-System">1.2.2 Control System - 控制系统</a></li>
        <li><a href="#Controller">1.2.3 Controller - 控制器</a></li>
        <ul>
          <li><a href="#PID">1.2.3.1 LQR Controller - LQR 控制器</a></li>
          <li><a href="#PID">1.2.3.2 P.I.D. Controller - P.I.D. 控制器</a></li>
        </ul>
      </ul>
      <li><a href="#Planning">1.3 Planning - 规划</a></li>
      <ul>
        <li><a href="#Intro-to-Trajectory-and-Motion-Planning">1.3.1 Intro to Trajectory and Motion Planning - 轨迹与运动规划入门</a></li>
        <li><a href="#Search-Based-Methods">1.3.2 Search-Based Methods - 基于搜索的方法</a></li>
        <li><a href="#Sampling-Based-Methods">1.3.3 Sampling-Based Methods - 基于采样的方法</a></li>
        <li><a href="#Geometry-Based-Methods">1.3.4 Geometry-Based Methods - 基于几何学的方法</a></li>
        <li><a href="#Optimization-Based-Methods">1.3.5 Optimization-Based Methods - 基于最优化的方法</a></li>
        <ul>
        <li><a href="#Model-Predictive-Control">1.3.5.1 Model Predictive Control - 模型预测控制</a></li>
        <ul>
          <li><a href="#Markovian-Decision-Process">1.3.5.1.1 Markovian Decision Process - 马尔可夫决策过程</a></li>
        </ul>
        </ul>
      </ul>
      <li><a href="#Perception">1.4 Perception - 感知</a></li>
      <ul>
        <li><a href="#Kalman-Filter">1.4.1 Kalman Filter - 卡尔曼滤波器</a></li>
        <li><a href="#Scene-Understanding">1.4.2 Computer Vision - 计算机视觉</a></li>
        <ul>
          <li><a href="#2D-Vision">1.4.2.1 2D Vision - 二维视觉</a></li>
          <li><a href="#3D-Vision">1.4.2.2 3D Vision - 三维视觉</a></li>
          <li><a href="#3D-Vision">1.4.2.3 4D Vision - 四维视觉</a></li>
          <li><a href="#Subdivision-of-application-domains">1.4.2.4 Subdivision of application domains - 应用领域细分</a></li>
          <ul>
            <li><a href="#Visual-Prompting">1.4.2.4.1 Visual Prompting - 视觉提示</a></li>
            <li><a href="#Affordance-Grounding">1.4.2.4.2 Affordance Grounding - 可供性锚定</a></li>
            <ul>
              <li><a href="#Two-Dimension">1.4.2.4.2.1 2D - 二维</a></li>
              <li><a href="#Three-Dimension">1.4.2.4.2.2 3D - 三维</a></li>
            </ul>
          </ul>
        </ul>
        <li><a href="#Scene-Understanding">1.4.2 Scene Understanding - 场景理解</a></li>
        <ul>
        <li><a href="#Scene-Understanding">1.4.2.1 Segmentation - 图像分割</a></li>
        </ul>
      </ul>
      <li><a href="#Learning">1.5 Learning - 学习</a></li>
      <ul>
        <li><a href="#Intro-to-Machine-Learning">1.5.1 Intro to Machine Learning - 机器学习入门</a></li>
        <li><a href="#Reinforcement-Learning">1.5.2 Reinforcement Learning - 强化学习</a></li>
        <li><a href="#Imitation-Learning">1.5.3 Imitation Learning - 模仿学习</a></li>
      </ul>
      <li><a href="#Multi-Robot-Systems">1.6 Multi-Robot Systems - 多机器人系统</a></li>
      <li><a href="#Simulation-and-Modeling">1.7 Simulation and Modeling - 仿真与建模</a></li>
      <li><a href="#Physical-Interaction">1.8 Physical Interaction - 物理交互</a></li>
      <li><a href="#Ethics-and-Social-Implications">1.9 Ethics and Social Implications - 伦理与社会问题</a></li>
    </ul>
  </li>
  
  <li><a href="#tools">2. Tools - 工具</a>
    <ul>
      <li><a href="#software">2.1 Software - 软件</a>
        <ul>
          <li><a href="#General-Tools">2.1.1 General Tools - 常用工具</a></li>
          <li><a href="#simulators">2.1.2 Simulators - 仿真器</a></li>
          <li><a href="#Robot-Description">2.1.3 Robot Description - 机器人描述格式</a></li>
        </ul>
      </li>
      <li><a href="#hardware">2.2 Hardware - 硬件</a>
      </li>
    </ul>
  </li>
  
  <li><a href="#literature-review">3. Literature Review - 文献综述</a>
    <ul>
      <li><a href="#Traditional-Control">3.1 Traditional Control - 传统控制</a></li>
      <li><a href="#Model-Predictive-Control">3.2 Model Predictive Control - 模型预测控制</a></li>
      <li><a href="#Vision-Language-Model">3.3 Vision Language Model - 视觉-语言模型</a></li>
      <li><a href="#Vision-Language-Action">3.4 Vision Language Action Model - 视觉-语言-动作模型</a></li>
      <li><a href="#Dual-System">3.5 Dual System - 双系统</a></li>
      <li><a href="#Model-Predictive-Control">3.3 Segmentation - 图像分割</a></li>
    </ul>
  </li>
  
  <li><a href="#paper-list-link">4. Paper Lists - 论文列表</a></li>
  <li><a href="#acknowledgement">5. Acknowledgement - 致谢</a></li>
  <li><a href="#citation">👍 Citation</a></li>
  <li><a href="#license">🏷️ License</a></li>
  <li><a href="#star-history">⭐️ Star History</a></li>
</ul>
</nav>



# 0. Useful Info - 优质资源链接 <a id="links"></a>

###### - [Awesome-Embodied-AI](https://github.com/yunlongdong/Awesome-Embodied-AI) - 具身经典开源项目
###### - [Xbot具身知识库](https://yv6uc1awtjc.feishu.cn/wiki/WPTzw9ON0ivIVrkLjVocNZh8nLf?from=from_copylink) - Xbot具身智能知识库
###### - [Embodied-AI-Guide](https://github.com/tianxingchen/Embodied-AI-Guide) - 具身智能系统性学习指南
###### - [具身智能招贤榜](https://github.com/StarCycle/Awesome-Embodied-AI-Job) - 业界学界招聘信息
<!-- ###### - [Writing AI Conference Papers: A Handbook for Beginners](https://github.com/hzwer/WritingAIPaper) - AI方向如何写论文
###### - [Hyperparameter-Optimization-of-Machine-Learning-Algorithms](https://github.com/LiYangHart/Hyperparameter-Optimization-of-Machine-Learning-Algorithms) - 机器学习算法的超参数优化 -->




# 1. Research Areas Guide - 研究领域入门指南 <a id="research-areas-guide"></a>

## Classical Courses 经典课程

 ###### - [Advanced Robotics at UC Berkeley by Pieter Abbeel (Fall 2019) CS287 高级机器人技术 加州伯克利](https://www.bilibili.com/video/BV1h7411A7B9/?spm_id_from=333.788.videopod.episodes&vd_source=180b6da13847c26de9d19ac71e61c7fe) 这门课是机器人的进阶课程，适合在学习完‘现代机器人 Modern Robotics’或者有相应基础后进一步学习。涉及的部分有**马尔科夫决策过程**，**LQR控制**，**在约束条件下的最优化问题**，**基于最优化的控制**，**运动规划**，**卡尔曼滤波**，**模仿学习**，**强化学习**，**Sim2Real**等等。课程中还涉及了很多实操演示，有助于进一步了解理论在真实世界中的应用。

  ###### - [Modern Robotics 现代机器人 美国西北大学](https://www.bilibili.com/video/BV1GJ411k7fE?spm_id_from=333.788.videopod.episodes&vd_source=180b6da13847c26de9d19ac71e61c7fe) 这门课侧重于基础的机器人理论，涉及的概念有**笛卡尔坐标系**，**关节坐标系**，**自由度**，**齐次旋转矩阵**，**正运动学（FK）**， **逆运动学（IK）** 等等，适合零基础入门。

  ###### - [Introduction to Artificial Intelligence 人工智能导论 CS188 伯克利](https://www.bilibili.com/video/BV1F1qpYwEgy/?spm_id_from=333.788.videopod.sections&vd_source=180b6da13847c26de9d19ac71e61c7fe) 这门课是伯克利经典的**人工智能入门课程**，适合零基础学习或作为AI领域的系统性入门。课程内容涵盖**搜索算法**、**博弈树**、**强化学习**、**概率推理**、**机器学习**基础等核心主题，并通过Pac-Man游戏项目将理论转化为实践。课程还涉及**马尔可夫决策过程（MDP）**、**贝叶斯网络**等进阶内容，为后续学习更高级的AI技术（如深度学习、机器人学）打下坚实基础。

  ###### - [Machine Learning 机器学习 CS229 斯坦福](https://www.bilibili.com/video/BV1YtB2YXEne/?spm_id_from=333.788.videopod.sections&vd_source=180b6da13847c26de9d19ac71e61c7fe) 这门课是斯坦福大学经典的机器学习权威课程，适合具备一定数学基础（线性代数、概率统计）的学习者系统入门机器学习。课程内容覆盖**监督学习（线性回归、逻辑回归、SVM）**、**无监督学习（聚类、降维）**、**深度学习基础**、**贝叶斯方法**以及**机器学习实践中的调参技巧**等核心内容。通过理论推导与编程作业相结合的方式，帮助学习者掌握从数学原理到代码实现的完整链条，是进阶AI领域不可错过的奠基课程。
  
###### - [Foundations of Deep RL -- 6-lecture series by Pieter Abbeel 深度强化学习基础](https://www.youtube.com/watch?v=2GwBez0D20A&list=PLwRJQ4m4UJjNymuBM9RdmB3Z9N5-0IlY0&index=1) 这门由加州伯克利Pieter Abbeel教授主讲的**深度强化学习**精要课程，通过6次讲座系统性地讲解了深度强化学习的核心理论与前沿应用。课程内容涵盖**强化学习基础**（MDP、贝尔曼方程）、**价值函数方法**（DQN及其变种）、**策略梯度算法**（REINFORCE、PPO）、**Actor-Critic框架**等关键技术，并深入探讨了**模仿学习**、**元强化学习**、**多智能体系统**等进阶主题。课程结合大量**机器人控制**、**游戏AI**等实际案例，特别适合已掌握传统强化学习基础（如CS188）并希望深入深度强化学习领域的学习者。Abbeel教授以清晰的数学推导配合PyTorch代码实现，帮助学习者建立从理论到实践的全栈认知。

###### - [Computer Vision CS231N by Fei-fei Li 李飞飞 斯坦福 计算机视觉](https://www.youtube.com/watch?v=vT1JzLTH4G4&list=PL3FW7Lu3i5JvHM8ljYj-zLfQRF3EO8sYv) 这门由斯坦福大学李飞飞教授主讲的**计算机视觉标杆课程**，系统性地介绍了**深度学习**时代的**计算机视觉核心技术**。课程从**图像分类**、**卷积神经网络(CNN)**的基础原理出发，逐步深入到**目标检测**（**R-CNN**、**YOLO**）、**语义分割**、**视觉注意力机制**、**生成模型**（**GAN**、**Diffusion**）等前沿方向，并结合**PyTorch/TensorFlow**实现细节进行讲解。课程特别强调理论与实践的结合，通过精心设计的作业（如从零实现CNN、风格迁移等），帮助学习者掌握将数学公式转化为高效代码的能力。适合具备Python和线性代数基础，希望进入计算机视觉或多媒体AI领域的学习者，是CV研究者公认的"必修课"。

###### - [Deep Reinforcement Learning CS285 by Sergey Levine 加州伯克利 深度强化学习课程 (Fall 2021)](https://www.bilibili.com/video/BV1fT4y1o7TS/?spm_id_from=333.788.videopod.episodes&vd_source=180b6da13847c26de9d19ac71e61c7fe) 这门由加州伯克利Sergey Levine教授主讲的**深度强化学习高阶课程**，是**机器人学与AI**领域最具影响力的前沿课程之一。课程从**深度RL基础理论**（贝尔曼方程、策略梯度）出发，系统性地讲解了**基于模型的RL**（MBRL）、**逆强化学习**（IRL）、**离线强化学习**（Offline RL）、**多任务迁移学习**等尖端技术，并深入剖析了**机器人控制**、**自动驾驶**等工业级应用场景。课程特别注重算法实现细节，通过PyTorch框架的编程作业（如实现PPO、SAC等算法），培养学习者解决复杂决策问题的工程能力。适合已完成CS188或基础RL课程，并希望掌握DRL前沿技术的研究者与工程师，被公认为进入深度强化学习领域的黄金标准课程。

###### - [Robotic Manipulation (Fall 2021) by Russ Tedrake 麻省理工 MIT 机器人操作](https://www.bilibili.com/video/BV1Xf4y1E7sK/?spm_id_from=333.788.videopod.episodes&vd_source=180b6da13847c26de9d19ac71e61c7fe) 这门由MIT Russ Tedrake教授主讲的**机器人操作权威课程**，系统性地讲解了现代机器人操作的核心理论与前沿算法。课程内容涵盖**刚体运动学**、**抓取力学**、**接触建模**、**轨迹优化**、**运动规划**等基础理论，并深入探讨了**基于优化的控制**、**鲁棒抓取规划**、**柔性物体操作**等尖端技术。 课程特别强调**算法实现与物理仿真**，通过Drake仿真框架和Python编程实践，帮助学习者掌握从理论到机器人系统落地的完整技术链条。Tedrake教授以其深厚的理论功底和丰富的工业经验，将复杂的机器人操作问题分解为直观的数学表达和可实现的算法方案。 适合已掌握现代机器人学基础（如机器人运动学、控制理论）并希望深入研究机器人操作领域的学习者，是进入工业机器人、服务机器人等领域的黄金课程。课程中大量来自MIT机器人实验室的真实案例（如灵巧手操作、仓储机器人等），为学习者提供了宝贵的工程实践参考。

---

## 1.1 Fundamentals of Robotics - 机器人学基础 <a id="Fundamentals-of-Robotics"></a>

### 1.1.1 Introduction - 基本概念入门 <a id="Markovian-Decision-Process"></a>

#### What Is A Robot? 什么是机器人？
- A well-accepted opinion: 一个公认的观点：
  – Mechanical structure to interact with the environment 与环境互动的机械结构
  – Electronics to sense, actuate and process information 传感、驱动和处理信息的电子学
  – Software to generate commands and autonomous motions to assist humans 软件生成指令和自主动作来帮助人类

#### Classification 分类
- Classification In terms of layout 按设计分类
  - Manipulator: With extendable structures 机械手：具有可伸缩结构
  • robot arm 机器人臂/机械臂
  • multi-fingered robot hands 多指机器人手

  - Mobile robot: With body mobility 移动机器人：具有身体移动能力
  • wheeled mobile robots 轮式机器人
  • humanoid robots 类人机器人
  • autonomous aerial robots 自主空中机器人
  • Unmanned Aerial Vehicle 无人机
  • …

  - Manipulator + mobile platform: 机械手移动平台：
  • integration of above 以上的结合

- Classification In terms of functionality 按功能分类
  • Industrial robots 工业机器人
  • Logistic robots 物流机器人
  • Service robots 服务机器人
  • Household robots 家庭机器人
  • Medical robots 医疗机器人
  • Professional service robots 专业服务机器人
  • Aerial/Underwater/Space robots 空中/水下/空间 机器人
  • …

#### Components of Robotic Systems 机器人系统组成
- Mechanical Structure: It is the body! Design, Kinematics and Dynamic models 机械结构：是身体！设计，运动学和动力学模型
- Sensors: Measure robots’ own and environmental information. Position, Velocity, Force, Vision, etc 传感器：测量机器人自身和环境信息。位置，速度，力，视觉等
- Computing System: It is the brain! Tasks include Sensor Fusion and Integration, Motion planning, Control, etc. 计算机系统：是大脑！任务包括传感器融合和集成，运动规划，控制等。
- Actuators: It generates power! There are electrical, hydraulic, and pneumatic actuators, etc 驱动器：它产生能量！有电动、液压和气动执行器等
- Human-robot interfaces: Enable human-robot interactions. 人机界面：实现人机交互。

#### Robot Manipulator/Manipulation 机械臂
A Robot Manipulator is consisted of 1. Body(Mechanical body), 2. Actuators, 3. Sensors, 4. Controllers, 5. End-effectors 机械臂由以下部分组成:1.本体（机械本体）, 2.致动器, 3.传感器, 4. 控制器, 5.末端执行器

- A manipulator consists of a number connected rigid bodies. 机械臂由若干相连的刚体组成。
  • The part connected to ground is called base 与地面相连的部分称为底座
  • The movable modules are called joints, the 1st joint, 2nd joint, … 活动模块被称为关节，第一关节，第二关节，…
  • The rigid connections are called links(the 1st link, 2nd link...). 刚性连接被称为链接（第一链接，第二链接…）。

##### Joints 关节
- Joints are used to connect links, being key components to generate robot motions 关节用于连接连杆，是产生机器人运动的关键部件
- Joints are classified into revolute joints and prismatic joints 关节分为转动关节和移动关节
  • Prismatic joints: relative linear motion 移动关节：相对线性运动
  • Revolute joints: relative rotation 转动关节：相对转动

##### End-effector 末端执行器
- End-effector is the tool for a robot to carry out a task. 末端执行器是机器人执行任务的工具。
  - gripper 钳子，drill 钻机，cutter 切割机，welding gun 焊枪，others 其他

##### Degree of Freedom (DOF) 自由度
- The degree of freedom (DOF) is a parameter describing degree of motion of a manipulator. 自由度（DOF）是描述机械臂运动程度的参数。
  - It is equal to the number of joints (if there are only prismatic and revolute joints) of a robot manipulator. 它等于机械臂的关节数（如果只有移动关节和转动关节）。
  - It is equal to the number of parameters specifying the configuration of a manipulator or mechanical system. 它等于指定机械手或机械系统结构的参数数量。
- A mobile robot in a plane has 2 translational degrees and 1 rotational degree. 在平面上移动的机器人有2个平移度和1个旋转度。
- A free-flying rigid body in a space has 3 translational and 3 rotational degrees.

##### Actuation 驱动器


##### Sensors 传感器



### 1.1.2 Mathematical Concepts and Spatial Transformation - 数学概念与空间转换 <a id="Mathematical-Concepts-and-Spatial-Transformation"></a>

##### Introduction
The configuration of a robot manipulator is determined by joint angles (variables) and joint-to-joint relationship (constant)
• Task specification is usually given in Cartesian space, i.e. the desired position and orientation of the end-effector are given in a Cartesian coordinates frame.
• Problem: How do we use joint information to obtain the position and orientation of the end-effector?

##### - Direction I: Forward Kinematics 正向运动学：机器人学中的一种方法，用于计算机器人末端执行器在给定关节角度下的位置和方向。
• Definition: Given a set of joint variables , determine the position and orientation of the end-effector with respect to a task (world, inertia) coordinate frame. 给定一组关节变量，确定末端执行器相对于任务（世界，惯性）坐标系的位置和方向。
![alt text](image/image1.png)

##### - Direction II: Inverse Kinematics 逆向运动学：一种数学过程，从其他数据比如笛卡尔坐标系下的空间位姿中恢复物体的运动参数，常用于机器人技术。
• Definition: Given a position and orientation of the end-effector, find the corresponding joint variables of the robot manipulator. 给定末端执行器的位置和姿态，求出机器人机械臂相应的关节变量。
![alt text](image/image2.png)

### 1.1.3 Forward Kinematics - 正向运动学 <a id="Forward-Kinematics"></a>


### 1.1.4 Inverse Kinematics - 逆向运动学 <a id="Inverse-Kinematics"></a>


### 1.1.5 Velocity Kinematics - 速度运动学 <a id="Velocity-Kinematics"></a>




## 1.2 Control - 控制 <a id="Control"></a>

### 1.2.1 Concepts - 概念与术语 <a id="Control-Concepts"></a>


### 1.2.2 Control System - 控制系统 <a id="Control-System"></a>


### 1.2.3 Controller - 控制器 <a id="Controller"></a>

#### 1.2.3.1 LQR Controller - LQR 控制器 <a id="LQR"></a>


#### 1.2.3.2 P.I.D. Controller - P.I.D. 控制器 <a id="PID"></a>




## 1.3 Planning - 规划 <a id="Planning"></a>

### 1.3.1 Intro to Trajectory and Motion Planning - 轨迹与运动规划入门 <a id="Intro-to-Trajectory-and-Motion-Planning"></a>
'The problem of calculating and generating the robot’s future motion sequence is called “planning”' 计算和生成机器人未来运动序列的问题被称为“规划”。
- Trajectory and motion planning are essential components in the field of robotics and autonomous systems. They involve determining the sequence of movements a robot must execute to perform a task effectively and safely within its environment. 轨迹和运动规划是机器人和自主系统领域的重要组成部分。它们包括确定机器人必须执行的动作顺序，以便在其环境中有效安全地执行任务。
![alt text](image/image3.png)

- End-effector motion planning: To generate in- between configurations given its initial and final configurations (or poses) 末端执行器运动规划：给定其初始和最终构型（或姿态）生成中间构型

- Planning results could directly affect the robot’s automation performance 规划结果会直接影响机器人的自动化性能

- Constraints include safety(Obstacle avoidance, singularity avoidance), efficiency(Fast tasks in industry), economy(To generate lowest cost), etc. 约束包括安全性（避障，奇异点规避），效率（工业中的快速任务），经济性（产生最低成本）等。

##### There are different types of planning problems: 不同类型的规划问题
• Motion Planning 运动规划; • Path Planning 路径规划; • Trajectory Planning 轨迹规划
![alt text](image/image4.png)
- Relationship
![alt text](image/image5.png)

##### Components in planning 规划的组成部分
• Boundary constraints 边界限制/约束; • Motion geometric profiles 运动几何轮廓; • Other constraints 其他约束

##### Trajectory generation 轨迹生成






### 1.3.2 Search-Based Methods - 基于搜索的方法 <a id="Search-Based-Methods"></a>
- Dijkstra’s method 迪杰斯特拉算法
  - From the starting point, search every adjacent point in each new step until reaching the goal, then find the shortest path among all the goal-reachable solutions. 从起始点开始，在每一步中搜索每个相邻点，直至到达目标点，然后从所有能够到达目标点的方案中找出最短路径。
  ![alt text](image/image6.png)

- A* method A星算法
  - From the starting point, find the adjacent point and select the point with the lowest cost as a new starting point until reaching the goal. 从起点开始，寻找相邻的点，选择代价最低的点作为新的起点，直到到达目标。
  - It is a more efficient version of Dijkstra’s method. 它是迪杰斯特拉算法的一个更有效的版本。
  ![alt text](image/image7.png)
  ![alt text](image/image8.png)
##### Comparison 比较
  ![alt text](image/image9.png)

### 1.3.3 Sampling-Based Methods - 基于采样的方法 <a id="Sampling-Based-Methods"></a>
![alt text](image/image10.png)

![alt text](image/image11.png)

![alt text](image/image12.png)

### Summary so far
- Search-based methods need to discretize the space first, and are generally used in low-dimensional space and could be inefficient in e.g. 6-DoF space 基于搜索的方法需要首先将空间离散化，通常用于低维空间，在6自由度空间中可能效率低下
  - Typical applications: Character moving in video games, decision making in AI, etc. 典型应用：电子游戏中的角色移动，AI中的决策制定等。
- Sampling-based methods do not need to discretize the space, and is workable in high-dimensional space 基于采样的方法不需要对空间进行离散化，在高维空间中是可行的
  - Typical applications: Manipulator grasping, pick-and-place, etc. 典型应用：机械手抓取、取放等。
- However, the above methods requires to know all the possible constraints appear in the whole space (e.g. obstacle positions and shapes, space limits) 然而，上述方法需要知道整个空间中出现的所有可能的约束（例如障碍物的位置和形状，空间限制）。
- Unable to reliably deal with dynamic constraints 无法可靠地处理动态约束

### 1.3.4 Geometry-Based Methods - 基于几何学的方法 <a id="Geometry-Based-Methods"></a>
![alt text](image/image13.png)
![alt text](image/image14.png)

### 1.3.5 Optimization-Based Methods - 基于最优化的方法 <a id="Optimization-Based-Methods"></a>
- Generate an initial motion profile for the robot, followed by online refinement of it using global/local optimization
- Example: CHOMP (Covariant Hamiltonian Optimization for Motion Planning)
![alt text](image/image15.png)
![alt text](image/image16.png)

#### 1.3.5.1 Model Predictive Control - 模型预测控制 <a id="Model-Predictive-Control"></a>
- Using system model to online adjust its future behavior within a limited (future) time horizon using optimization. 利用系统模型在有限的（未来）时间范围内对其未来行为进行在线优化。

![alt text](image/image17.png)

![alt text](image/image18.png)

![alt text](image/image19.png)

![alt text](image/image20.png)

- MPC is one of the most popular methods for integrated motion planning (by enforcing t→∞). MPC是最流行的综合运动规划方法之一（通过强制t→∞）。
- Advantages 优势
  - Could plan future motions under various and dynamic constraints 能在各种的和动态的约束下规划未来的运动
  - Could be efficient within short time horizon 能在短时间视野内高效
- Applications 应用
  - Iron boiler temperature control 铁锅炉温度控制
  - L2 Autonomous driving L2自动驾驶
  - Drone formation flying 无人机编队飞行
- Robot Tasks 机器人的任务
  - Human-robot safe collaboration (robot manipulators) 人机安全协作（机械手）
  - Dynamic planning in human crowd (mobile robots) 人群动态规划（移动机器人）

##### 1.3.5.1.1 Markovian Decision Process - 马尔可夫决策过程 <a id="Markovian-Decision-Process"></a>

**Markov Process** is a stochastic model describing how a system evolves over time, characterized by the **memoryless property**: the future state depends only on the current state, not the past history. It forms the foundation of environment modeling in robotics and reinforcement learning. **马尔可夫过程**是描述系统状态随时间演化的一种随机模型，其核心特性是**无记忆性**，即未来的状态仅依赖于当前状态，与过去的状态无关。它是机器人学和强化学习中环境建模的基础。

- **Markov Property 马尔可夫性质**：\( P(s_{t+1} | s_t) = P(s_{t+1} | s_1, s_2, \ldots, s_t) \)
- **Applications 应用**：
  - **Markov Decision Process 马尔可夫决策过程 (MDP)**：A key framework in reinforcement learning. 强化学习中常用的环境建模框架。
  - Robot path planning and decision-making. 机器人路径规划和决策。
  - Dynamic system modeling. 动态系统建模。

### Summary
- Search-based methods 基于搜索的方法
  - pros：
    - Easy to implement 容易执行
  - cons：
    - Only efficient in low-dimensional space 只在低维空间有效
- Sampling-based methods 基于采样的方法
  - pros：
    - Could scalability in arbitrary space 任意空间的可伸缩性
    - Completeness of path finding (given enough time) 路径查找的完整性（给定足够的时间）
  - cons：
    - Planning time cost is too random to predict 规划的时间成本/所花费的时间是随机的，无法预测
- Geometry-based methods 基于几何学的方法
  - pros：
    - Model is simple and very efficient 模型简单，效率高
  - cons：
    - Chances to be trapped in local minima 有可能被困在局部极小值
- Optimization-based methods 基于最优化的方法
  - pros：
    - Could be reactive to complex and dynamic situations 能够对复杂和动态的情况做出反应
  - cons：
    - Performance depends on model initialization 性能取决于模型初始化


## 1.4 Perception - 感知 <a id="Perception"></a>

### 1.4.1 Kalman Filter - 卡尔曼滤波器 <a id="Kalman-Filter"></a>

 ###### - [卡尔曼滤波从理论到实践 华工机器人实验室](https://www.bilibili.com/video/BV1Rh41117MT?spm_id_from=333.788.videopod.episodes&vd_source=180b6da13847c26de9d19ac71e61c7fe&p=2) 课程分为‘滤波概要’，‘基本滤波知识储备’，‘通俗公式理解’和‘从理论到实践’四个章节。适合新手入门。

### Introduction

The **Kalman Filter** is a mathematical algorithm that provides an efficient computational solution to estimate the state of a dynamic system from a series of incomplete and noisy measurements. It is widely used in control systems, navigation, signal processing, and econometrics due to its ability to extract useful information from noisy data. **卡尔曼滤波**是一种数学算法，它提供了一种有效的计算解决方案，从一系列不完整和有噪声的测量中估计动态系统的状态。由于它能够从噪声数据中提取有用的信息，因此被广泛应用于控制系统、导航、信号处理和计量经济学中。

**Kalman Filter** is a recursive estimation algorithm used to optimize the estimation of a dynamic system's state, particularly under noisy conditions. It is widely applied in robotics for localization, navigation, and sensor fusion. **卡尔曼滤波**是一种递归估计算法，用于优化动态系统的状态估计，特别是在存在噪声的情况下。它被广泛应用于机器人学中的定位、导航和传感器数据融合。

- **Features 特点**：
  - Works for linear systems. 适用于线性系统。
  - Assumes Gaussian noise. 假设噪声为高斯分布。
- **Steps 步骤**：
  1. **Prediction 预测**：Predict the next state using the system model. 根据系统模型预测下一状态。
  2. **Update 更新**：Correct the prediction using measurement data. 结合测量值修正预测值。
- **Applications 应用**：
  - Robot localization (e.g., SLAM: Simultaneous Localization and Mapping). 机器人定位（SLAM：同步定位与建图）。
  - Sensor fusion (e.g., combining IMU and GPS data). 传感器数据融合（如 IMU 和 GPS 数据的结合）。


### 1.4.1.1. What is the Kalman Filter?

#### 1.4.1.1.1. Overview


The Kalman Filter is a recursive estimator that estimates the state of a discrete-time controlled process governed by a linear stochastic difference equation. It operates in a two-step process: 卡尔曼滤波器是一种递归估计器，用于估计由线性随机差分方程控制的离散时间控制过程的状态。它分为两步：

1. **Prediction Step:** The filter produces estimates of the current state variables, along with their uncertainties.   **预测步骤：** 过滤器产生当前状态变量的估计，以及它们的不确定性。
2. **Update Step (Correction):** Once a new measurement is observed, these predictions are updated using a weighted average, with more weight given to estimates with higher certainty.   **更新步骤（修正）：** 一旦观察到新的测量结果，这些预测将使用加权平均值进行更新，并将更多的权重赋予具有更高确定性的估计。

#### 1.4.1.1.2. Mathematical Foundations

The Kalman Filter assumes the following: 卡尔曼滤波器假设如下

- The system is **linear**. 该系统是线性的。
- The **system dynamics and measurement equations** are known. **系统动力学和测量方程**是已知的。
- The process noise and measurement noise are both **Gaussian**, with zero mean and known covariance. 过程噪声和测量噪声均为**高斯噪声**，均值为零，协方差已知。

**State-Space Representation 状态空间表示:** 

<!-- The system can be represented in state-space form: 系统可以用状态空间的形式表示：

1. **State Equation (Process Model) 状态方程（过程模型）:**
   \[
   \mathbf{x}_{k} = \mathbf{A}_{k}\mathbf{x}_{k-1} + \mathbf{B}_{k}\mathbf{u}_{k} + \mathbf{w}_{k}
   \]

2. **Measurement Equation 测量方程:**
   \[
   \mathbf{z}_{k} = \mathbf{H}_{k}\mathbf{x}_{k} + \mathbf{v}_{k}
   \]

**Where:**

- \(\mathbf{x}_{k}\): State vector at time \(k\). 时间\(k\)时的状态向量。
- \(\mathbf{A}_{k}\): State transition matrix. 状态转移矩阵。
- \(\mathbf{u}_{k}\): Control input vector. 控制输入向量。
- \(\mathbf{B}_{k}\): Control input matrix. 控制输入矩阵。
- \(\mathbf{w}_{k}\): Process noise (assumed to be Gaussian with covariance \(\mathbf{Q}_{k}\)). 过程噪声（假设为高斯（分布），协方差为\(\mathbf{Q}_{k}\)）。
- \(\mathbf{z}_{k}\): Measurement vector at time \(k\). 在时间\(k\)的测量向量。
- \(\mathbf{H}_{k}\): Measurement matrix. 测量矩阵。
- \(\mathbf{v}_{k}\): Measurement noise (assumed to be Gaussian with covariance \(\mathbf{R}_{k}\)). 测量噪声（假设为高斯（分布），协方差为\(\mathbf{R}_{k}\)）。 -->
![alt text](image/image21.png)

![alt text](image/image23.png)


#### 1.4.1.1.3. Applications for Linear Kalman Filter

- **Finance 金融:** Estimating market trends and filtering economic indicators. 估计市场趋势，过滤经济指标。
- **Signal Processing 信号处理:** Noise reduction in signals, system identification. 信号降噪，系统识别。
- **Control Systems 控制系统:** Classical control applications with linear dynamics. 经典控制应用与线性动力学。

### 1.4.1.2. Variants of the Kalman Filter 卡尔曼滤波器的变体

Due to limitations in the basic Kalman Filter (e.g., linearity assumptions), several variants have been developed to handle nonlinear systems, improve numerical stability, and address specific application requirements. 由于基础的卡尔曼滤波器的局限性（例如，线性假设），已经开发了几种变体来处理非线性系统，提高数值稳定性，并满足特定的应用要求。

#### 1.4.1.2.1. Extended Kalman Filter (EKF) 扩展卡尔曼滤波

##### 1.4.1.2.1.1. Overview

The EKF linearizes the nonlinear system around the current estimate using Taylor series expansion. It approximates the system dynamics and measurement equations to first-order terms. EKF利用泰勒级数展开对当前估计周围的非线性系统进行线性化。它将系统动力学和测量方程近似为一阶项。

##### 1.4.1.2.1.2. Mathematical Formulation 数学公式

<!-- For a system described by nonlinear functions: 对于由非线性函数描述的系统：

- **Process Model 流程模型:**
  \[
  \mathbf{x}_{k} = f(\mathbf{x}_{k-1}, \mathbf{u}_{k}) + \mathbf{w}_{k}
  \]

- **Measurement Model 测量模型:**
  \[
  \mathbf{z}_{k} = h(\mathbf{x}_{k}) + \mathbf{v}_{k}
  \]

EKF（扩展卡尔曼滤波）使用雅可比矩阵对\(f\)和\(h\)进行线性化 The EKF uses Jacobian matrices to linearize \(f\) and \(h\):

- **State Transition Jacobian 状态转移雅可比矩阵:**
  \[
  \mathbf{F}_{k} = \left. \frac{\partial f}{\partial \mathbf{x}} \right|_{\hat{\mathbf{x}}_{k-1}}
  \]

- **Measurement Jacobian 测量雅可比矩阵:**
  \[
  \mathbf{H}_{k} = \left. \frac{\partial h}{\partial \mathbf{x}} \right|_{\hat{\mathbf{x}}_{k}}
  \] -->
  ![alt text](image/image22.png)

  ![alt text](image/image24.png)

##### 1.4.1.2.1.3. Applications 应用

- **Navigation Systems 导航系统:** Aerospace and marine navigation where the motion dynamics are nonlinear. 运动动力学非线性的航空航天和航海。
- **Robotics 机器人学:** Mobile robot localization and mapping (SLAM). 移动机器人定位与制图（SLAM）。
- **Tracking Systems 追踪系统:** Radar and sonar tracking of maneuvering targets. 机动目标的雷达和声纳跟踪。
- **Biomedical Engineering 生物医学工程:** Heart rate estimation from noisy measurements. 从噪声测量中估计心率。

#### 1.4.1.2.2. Unscented Kalman Filter (UKF) 无迹卡尔曼滤波器

##### 1.4.1.2.2.1. Overview

The UKF addresses the inaccuracies arising from linearization in the EKF by using deterministic sampling (sigma points) to capture the mean and covariance estimates more accurately. UKF通过使用确定性采样（西格玛点）来更准确地捕获平均值和协方差估计，从而解决了EKF中线性化引起的不准确性。

##### 1.4.1.2.2.2. Sigma Points 西格马点

The UKF generates a set of sigma points that are propagated through the nonlinear functions UKF生成一组sigma点，这些点通过非线性函数传播：:

- Captures up to the second-order statistics of the Gaussian distribution. 捕获高斯分布的二阶统计量。
- Provides better approximations for nonlinear transformations. 为非线性变换提供更好的近似。

##### 1.4.1.2.2.3. Applications 应用

- **Nonlinear Control Systems 非线性控制系统:** Where higher accuracy is needed over the EKF. 需要比EKF更高精度的地方。
- **sensor fusion 传感器融:** Combining data from multiple sensors with nonlinear measurements. 将多个传感器的数据与非线性测量相结合。
- **Autonomous Vehicles 自动驾驶车辆:** State estimation in complex dynamic environments. 复杂动态环境下的状态估计。

#### 1.4.1.2.3. Error-State Kalman Filter (ESKF) 误差状态卡尔曼滤波器

##### 1.4.1.2.3.1. Overview

The ESKF estimates the error between the estimated state and the true state, rather than estimating the state directly. This is particularly useful for systems where the state variables exhibit slow changes or when initial estimates are available. ESKF估计 估计状态 和 真实状态 之间的误差，而不是直接估计状态。这对于状态变量表现出缓慢变化或初始估计可用的系统特别有用。

##### 1.4.1.2.3.2. Mathematical Formulation 数学公式

![alt text](image/image25.png)

##### 1.4.1.2.3.3. Advantages 优势

- **Numerical Stability 数值稳定性:** By focusing on small errors, numerical issues due to large state values are minimized. 通过关注小误差，由于大状态值的数值问题被最小化。
- **Simplified Linearization 简化线性化:** The error dynamics are often more linear than the state dynamics, simplifying the computation. 误差动力学通常比状态动力学更线性，简化了计算。

##### 1.4.1.2.3.4. Applications 应用


- **Mobile Robotics 移动机器人:** High-precision localization in GPS-denied environments. 在gps拒绝的环境中进行高精度定位。
- **Virtual Reality (VR) 虚拟现实:** Head and motion tracking for immersive experiences. 沉浸式体验的头部和运动跟踪。
- **Inertial Measurement Unit (IMU) Integration 惯性测量单元（IMU）集成:** Correcting drift errors in accelerometers and gyroscopes. 修正加速度计和陀螺仪的漂移误差。
- **Inertial Navigation Systems (INS) 惯性导航系统:** Where small errors in position, velocity, and orientation need to be accurately estimated. 需要精确估计位置、速度和方向的小误差。
- **Robotics 机器人:** Precise localization and mapping, especially in SLAM applications. 精确定位和绘图，特别是在SLAM应用中。
- **Aerospace 航空航天:** Attitude estimation for aircraft and satellites. 飞机和卫星的姿态估计。

#### 1.4.1.2.4. Square Root Kalman Filter (SRKF) 平方根卡尔曼滤波

##### 1.4.1.2.4.1. Overview

The SRKF maintains the square root of the covariance matrix to improve numerical stability. SRKF保持协方差矩阵的平方根以提高数值稳定性。

##### 1.4.1.2.4.2. Advantages 优势

- **Numerical Stability 数值稳定性:** Avoids direct computation of the covariance matrix, reducing round-off errors. 避免直接计算协方差矩阵，减少舍入误差。
- **Positive Definiteness  正定性:** Ensures the covariance matrix remains positive definite. 确保协方差矩阵保持正定。

##### 1.4.1.2.4.3. Applications 应用

- **High-Precision Systems 高精度的系统:** Where numerical errors can accumulate over time. 随着时间的推移，数值误差会累积。
- **Space Missions 太空任务:** Deep space navigation where precision is critical. 精度至关重要的深空导航。
- **Large-Scale Systems:** With significant computational demands. 有大量的计算需求。


#### 1.4.1.2.5. Information Filter (Inverse Covariance Filter) 信息滤波（逆协方差滤波）

##### 1.4.1.2.5.1. Overview

The Information Filter operates on the information matrix (inverse of the covariance matrix) and information vector. 信息过滤器对信息矩阵（协方差矩阵的逆）和信息向量进行操作。

##### 1.4.1.2.5.2. Advantages 优势

- **Sparsity Exploitation 稀疏剥削:** Efficient for systems where the information matrix is sparse. 对于信息矩阵稀疏的系统是有效的。
- **Distributed Estimation 分布估计:** Facilitates decentralized estimation in networked systems. 促进网络系统中的分散估计。

##### 1.4.1.2.5.3. Applications 应用

- **Sensor Networks 传感器网络:** Distributed state estimation. 分布式状态估计
- **Multi-Robot Systems 多机器人系统:** Where robots share information to estimate a common state. 机器人共享信息来估计一个共同的状态。

#### 1.4.1.2.6. Ensemble Kalman Filter (EnKF) 集合卡尔曼滤波器

##### 1.4.1.2.6.1. Overview

The EnKF uses a Monte Carlo approach with an ensemble of random samples to estimate the state distribution. EnKF使用蒙特卡罗方法和随机样本集合来估计状态分布。

##### 1.4.1.2.6.2. Applications 应用

- **Meteorology 气象学:** Weather prediction and climate modeling. 天气预报和气候模拟。
- **Oceanography 海洋学:** Estimating ocean states from sparse measurements. 从稀疏测量估计海洋状态。

#### 1.4.1.2.7. Particle Filter (Sequential Monte Carlo Methods) 粒子滤波（顺序蒙特卡罗方法）

Although not a Kalman filter, particle filters are similar recursive Bayesian estimators suitable for highly nonlinear and non-Gaussian systems. 虽然不是卡尔曼滤波器，但粒子滤波器是类似于适用于高度非线性和非高斯系统的递归贝叶斯估计。



### 1.4.1.3. Choosing the Appropriate Kalman Filter Variant 选择合适的卡尔曼滤波器变体

#### 1.4.1.3.1. System Linearity 系统线性
- **Linear Systems 线性系统:** Use the standard Kalman Filter. 使用标准的卡尔曼滤波器。
- **Mildly Nonlinear Systems 轻度非线性系统:** EKF may suffice, but be cautious of linearization errors. EKF可能足够了，但要小心线性化误差。
- **Highly Nonlinear Systems 高度非线性系统:** UKF or particle filters are more appropriate. UKF(Unscented Kalman Filter)无迹卡尔曼滤波或粒子过滤器更合适。

#### 1.4.1.3.2. Computational Resources 计算资源

- **Limited Resources 有限资源:** EKF is less computationally intensive than UKF. 与UKF相比，EKF的计算强度更小。
- **High Accuracy Needed 需要高精度:** UKF provides better estimates at the expense of computation. UKF以计算为代价提供更好的估计。

#### 1.4.1.3.3. Noise Characteristics 噪声特性

- **Gaussian Noise 高斯噪声:** Standard KF, EKF, UKF assume Gaussian noise. 标准KF， EKF， UKF假设高斯噪声。
- **Non-Gaussian Noise 非高斯噪声:** Particle filters or other nonlinear estimators are preferable. 粒子滤波器或其他非线性估计器是优选的。

#### 1.4.1.3.4. Application Requirements 应用需求

- **Precision vs. Speed 精度vs速度:** SRKF is preferred for precision, while standard KF is faster. SRKF精度较高，而标准KF速度更快。
- **Distributed Systems 分布式系统:** Information Filters are suitable for decentralized estimation. 信息过滤器适用于分散估计。



### 1.4.1.5. Kalman Filter Algorithm Steps 卡尔曼滤波算法步骤

#### 1.4.1.5.1. Standard Kalman Filter Steps 标准卡尔曼滤波步骤
##### 

<!-- **State-Space Representation 状态空间表示:** 
![alt text](image/image21.png) -->

<!-- 1. **Initialization 初始化:**
   - Set initial state estimate \(\hat{\mathbf{x}}_{0}\) and covariance \(\mathbf{P}_{0}\).

2. **Prediction Step 预测步骤:**
   - Predict the next state 预测下一个状态:
     \[
     \hat{\mathbf{x}}_{k|k-1} = \mathbf{A}_{k}\hat{\mathbf{x}}_{k-1|k-1} + \mathbf{B}_{k}\mathbf{u}_{k}
     \]
   - Predict the covariance 预测协方差:
     \[
     \mathbf{P}_{k|k-1} = \mathbf{A}_{k}\mathbf{P}_{k-1|k-1}\mathbf{A}_{k}^{T} + \mathbf{Q}_{k}
     \]

3. **Update Step 更新步骤:**
   - Compute the Kalman Gain 计算卡尔曼增益:
     \[
     \mathbf{K}_{k} = \mathbf{P}_{k|k-1}\mathbf{H}_{k}^{T}(\mathbf{H}_{k}\mathbf{P}_{k|k-1}\mathbf{H}_{k}^{T} + \mathbf{R}_{k})^{-1}
     \]
   - Update the estimate with measurement \(\mathbf{z}_{k}\) 用测量 \(\mathbf{z}_{k}\)更新估计:
     \[
     \hat{\mathbf{x}}_{k|k} = \hat{\mathbf{x}}_{k|k-1} + \mathbf{K}_{k}(\mathbf{z}_{k} - \mathbf{H}_{k}\hat{\mathbf{x}}_{k|k-1})
     \]
   - Update the covariance 更新协方差:
     \[
     \mathbf{P}_{k|k} = (\mathbf{I} - \mathbf{K}_{k}\mathbf{H}_{k})\mathbf{P}_{k|k-1}
     \] -->
  ![alt text](image/image26.png)

---

The following is a detailed step-by-step explanation of the above Kalman filter algorithm steps, including the definition of each symbol and its corresponding relationship in the formula: 以下是上述卡尔曼滤波算法步骤的详细分步解释，包含每个符号的定义及其在公式中的对应关系：

#### **1. Initialization 初始化**
<!-- - **Symbol Definition 符号定义**：
  - \(\hat{\mathbf{x}}_{0}\): Initial state estimation (such as the initial position and speed of the robot). 初始状态估计（如机器人的初始位置、速度）。
  - \(\mathbf{P}_{0}\): The initial state covariance matrix represents the uncertainty of the initial estimation (the diagonal elements are the variance, and the non-diagonal elements are the correlations between states). 初始状态协方差矩阵，表示初始估计的不确定性（对角线元素为方差，非对角线为状态间的相关性）。
- **作用 Role**：  
  Provide the starting point of the filter, and the subsequent steps will be gradually updated based on this. 提供滤波器的起点，后续步骤将基于此逐步更新。 -->
  ![alt text](image/image27.png)

#### **2. Prediction Step 预测步骤**
<!-- #### **(1) State Prediction 状态预测**
\[
\hat{\mathbf{x}}_{k|k-1} = \mathbf{A}_{k}\hat{\mathbf{x}}_{k-1|k-1} + \mathbf{B}_{k}\mathbf{u}_{k}
\]
- **符号定义**：
  - \(\hat{\mathbf{x}}_{k|k-1}\): **Prior state estimation** at time \(k\) (without considering the current measurement). 在时间 \(k\) 的**先验状态估计**（未考虑当前测量）。
  - \(\mathbf{A}_{k}\): **State transition matrix** (describing how the system evolves from the \(k-1\) moment to the \(k\) moment, such as kinematic models). **状态转移矩阵**（描述系统如何从 \(k-1\) 时刻演化到 \(k\) 时刻，如运动学模型）。
  - \(\hat{\mathbf{x}}_{k-1|k-1}\): The posterior state estimation at time \(k-1\) (with the measurement from the previous time fused). \(k-1\) 时刻的**后验状态估计**（已融合上一时刻的测量）。
  - \(\mathbf{B}_{k}\): **Control input matrix** (mapping the control input \(\mathbf{u}_{k}\) to the state space, such as the influence of acceleration on velocity). **控制输入矩阵**（将控制输入 \(\mathbf{u}_{k}\) 映射到状态空间，如加速度对速度的影响）。
  - \(\mathbf{u}_{k}\): **Control input** (such as control signals for motors). **控制输入**（如电机的控制信号）。
- **Physical Significance 物理意义**：  
  Predict the current state based on the system dynamics and kinematics model. 基于系统动力学和运动学模型预测当前状态。 -->
  ![alt text](image/image28.png)

#### **(2) Covariance Prediction 协方差预测**
<!-- \[
\mathbf{P}_{k|k-1} = \mathbf{A}_{k}\mathbf{P}_{k-1|k-1}\mathbf{A}_{k}^{T} + \mathbf{Q}_{k}
\]
- **Symbol Definition 符号定义**：
  - \(\mathbf{P}_{k|k-1}\): Prior state covariance (uncertainty of prediction). 先验状态协方差（预测的不确定性）。
  - \(\mathbf{P}_{k-1|k-1}\): The posterior covariance at time \(k-1\). \(k-1\) 时刻的后验协方差。
  - \(\mathbf{Q}_{k}\): Process noise covariance (model error, such as unmodeled external disturbances). 过程噪声协方差（模型误差，如未建模的外部扰动）。
- **Physical Significance 物理意义**：  
  The uncertainty of prediction comes from two parts 预测的不确定性来自两部分：  
  1. The uncertainty of the previous moment is transmitted through \(\mathbf{A}_{k}\); 上一时刻的不确定性通过 \(\mathbf{A}_{k}\) 传递；  
  2. Process noise \(\mathbf{Q}_{k}\) adds additional uncertainty. 过程噪声 \(\mathbf{Q}_{k}\) 增加额外不确定性。 -->
  ![alt text](image/image29.png)

---

##### -> Derivation of the covariance prediction formula 协方差预测公式推导
<!-- The covariance prediction formula in Kalman filtering 卡尔曼滤波中的**协方差预测公式**：
\[
\mathbf{P}_{k|k-1} = \mathbf{A}_{k}\mathbf{P}_{k-1|k-1}\mathbf{A}_{k}^{T} + \mathbf{Q}_{k}
\]
Its derivation stems from **uncertainty propagation** and **Gaussian properties of linear systems**. The following are the detailed steps: 其推导源于**不确定性传播**和**线性系统的高斯性质**，以下是详细步骤： -->
![alt text](image/image30.png)

###### **1. Theoretical Basis 理论基础**
Suppose the system satisfies the following linear Gaussian model: 假设系统满足以下线性高斯模型：
<!-- - **State Equation 状态方程**：
  \[
  \mathbf{x}_k = \mathbf{A}_k \mathbf{x}_{k-1} + \mathbf{B}_k \mathbf{u}_k + \mathbf{w}_k, \quad \mathbf{w}_k \sim \mathcal{N}(0, \mathbf{Q}_k)
  \]
  Here, \(\mathbf{w}_k\) is the process noise, and the covariance is \(\mathbf{Q}_k\). 其中 \(\mathbf{w}_k\) 是过程噪声，协方差为 \(\mathbf{Q}_k\)。

- **State estimation of the previous moment 上一时刻的状态估计**：
  \[
  \hat{\mathbf{x}}_{k-1|k-1} \sim \mathcal{N}(\mathbf{x}_{k-1}, \mathbf{P}_{k-1|k-1})
  \] -->
  ![alt text](image/image31.png)

###### **2. The definition of the covariance of the predicted state 预测状态的协方差定义**
<!-- The covariance of the predicted state \(\hat{\mathbf{x}}_{k|k-1}\) is defined as: 预测状态 \(\hat{\mathbf{x}}_{k|k-1}\) 的协方差定义为：
\[
\mathbf{P}_{k|k-1} = \text{Cov}(\mathbf{x}_k - \hat{\mathbf{x}}_{k|k-1})
\]
Generation into the state equation and the prediction formula \(\hat{\mathbf{x}}_{k|k-1} = \mathbf{A}_k \hat{\mathbf{x}}_{k-1|k-1} + \mathbf{B}_k \mathbf{u}_k\), get: 代入状态方程和预测公式 \(\hat{\mathbf{x}}_{k|k-1} = \mathbf{A}_k \hat{\mathbf{x}}_{k-1|k-1} + \mathbf{B}_k \mathbf{u}_k\)，得到：
\[
\mathbf{x}_k - \hat{\mathbf{x}}_{k|k-1} = \mathbf{A}_k (\mathbf{x}_{k-1} - \hat{\mathbf{x}}_{k-1|k-1}) + \mathbf{w}_k
\] -->
![alt text](image/image32.png)

###### **3. Covariance expansion 协方差展开**
<!-- By using the properties of covariance  \(\text{Cov}(\mathbf{M}\mathbf{y}) = \mathbf{M} \text{Cov}(\mathbf{y}) \mathbf{M}^T\) and noise independence: 利用协方差的性质 \(\text{Cov}(\mathbf{M}\mathbf{y}) = \mathbf{M} \text{Cov}(\mathbf{y}) \mathbf{M}^T\) 和噪声独立性：
\[
\begin{aligned}
\mathbf{P}_{k|k-1} &= \text{Cov}\left( \mathbf{A}_k (\mathbf{x}_{k-1} - \hat{\mathbf{x}}_{k-1|k-1}) + \mathbf{w}_k \right) \\
&= \mathbf{A}_k \text{Cov}(\mathbf{x}_{k-1} - \hat{\mathbf{x}}_{k-1|k-1}) \mathbf{A}_k^T + \text{Cov}(\mathbf{w}_k) \\
&= \mathbf{A}_k \mathbf{P}_{k-1|k-1} \mathbf{A}_k^T + \mathbf{Q}_k.
\end{aligned}
\] -->
![alt text](image/image33.png)

###### **4. Key Point Explanation 关键点解释**
<!-- - **\(\mathbf{A}_k \mathbf{P}_{k-1|k-1} \mathbf{A}_k^T\)**：  
  The state transition matrix \(\mathbf{A}_k\) maps the uncertainty \(\mathbf{P}_{k-1 | k-1}\) of the previous moment to the current moment and considers the influence of linear transformation on covariance. 状态转移矩阵 \(\mathbf{A}_k\) 将上一时刻的不确定性 \(\mathbf{P}_{k-1|k-1}\) 映射到当前时刻，并考虑线性变换对协方差的影响。
- **\(\mathbf{Q}_k\)**：  
  The additional uncertainty introduced by process noise, which is independent of the state estimation error. 过程噪声引入的额外不确定性，独立于状态估计误差。 -->
  ![alt text](image/image34.png)

###### **5. Intuitive Understanding 直观理解**
<!-- - **Uncertainty Propagation 不确定性传播**：The error of state estimation propagates through system dynamics \(\mathbf{A}_k\), while superimposing the disturbance of process noise. 状态估计的误差通过系统动力学 \(\mathbf{A}_k\) 传播，同时叠加过程噪声的扰动。
- **高斯分布的线性变换**：线性系统中，高斯状态经过线性变换后仍为高斯分布，协方差按此规律更新。 -->
![alt text](image/image35.png)

###### **6. Extended Scenarios 扩展场景**
<!-- - **Extended Kalman Filter（EKF）Nonlinear System 非线性系统**：  
  Use the Jacobian matrix \(\mathbf{F}_k\) instead of \(\mathbf{A}_k\), and approximately propagate the covariance after linearizing the local points: 使用雅可比矩阵 \(\mathbf{F}_k\) 代替 \(\mathbf{A}_k\)，在局部点线性化后近似传播协方差：
  \[
  \mathbf{P}_{k|k-1} = \mathbf{F}_k \mathbf{P}_{k-1|k-1} \mathbf{F}_k^T + \mathbf{Q}_k.
  \] -->
  ![alt text](image/image36.png)

###### **Summary 总结**
This formula is one of the cores of the Kalman filter. It quantifies the uncertainty in the prediction stage through the covariance propagation of the linear transformation and the superposition of noise, providing a basis for subsequent measurement updates. 该公式是卡尔曼滤波的核心之一，通过**线性变换的协方差传播**和**噪声叠加**，量化预测阶段的不确定性，为后续的测量更新提供基础。

---

#### **3. Update Step 更新步骤**
#### **(1) Calculate the Kalman gain 计算卡尔曼增益**
<!-- \[
\mathbf{K}_{k} = \mathbf{P}_{k|k-1}\mathbf{H}_{k}^{T}(\mathbf{H}_{k}\mathbf{P}_{k|k-1}\mathbf{H}_{k}^{T} + \mathbf{R}_{k})^{-1}
\]
- **Symbol Definition 符号定义**：
  - \(\mathbf{K}_{k}\): 卡尔曼增益（权衡预测与测量的权重）。 Kalman gain (weighing the weights of prediction and measurement).
  - \(\mathbf{H}_{k}\): 观测矩阵（将状态映射到测量空间，如传感器只能观测位置而非速度）。Observation matrix (mapping states to the measurement space, such as sensors can only observe position rather than velocity).
  - \(\mathbf{R}_{k}\): 测量噪声协方差（传感器误差）。 Measure the noise covariance (sensor error).
- **Physical Significance 物理意义**：  
  - 分母 \(\mathbf{H}_{k}\mathbf{P}_{k|k-1}\mathbf{H}_{k}^{T} + \mathbf{R}_{k}\) 是**预测测量**的不确定性。  The denominator \(\mathbf{H}_{k}\mathbf{P}_{k|k-1}\mathbf{H}_{k}^{T} + \mathbf{R}_{k}\) is **prediction measurement uncertainty**.
  - Kalman gain decision more trust prediction (（\(\mathbf{K}_{k}\) small) or measurement (\(\mathbf{K}_{k}\) big). 卡尔曼增益决定更信任预测（\(\mathbf{K}_{k}\) 小）还是测量（\(\mathbf{K}_{k}\) 大）。 -->
  ![alt text](image/image37.png)

#### **(2) Update the State 状态更新**
<!-- \[
\hat{\mathbf{x}}_{k|k} = \hat{\mathbf{x}}_{k|k-1} + \mathbf{K}_{k}(\mathbf{z}_{k} - \mathbf{H}_{k}\hat{\mathbf{x}}_{k|k-1})
\]
- **Symbol Definition 符号定义**：
  - \(\hat{\mathbf{x}}_{k|k}\): Posterior state estimation (optimal estimation after fusion measurement). 后验状态估计（融合测量后的最优估计）。
  - \(\mathbf{z}_{k}\): Actual measured values (such as GPS readings). 实际测量值（如GPS读数）。
  - \(\mathbf{z}_{k} - \mathbf{H}_{k}\hat{\mathbf{x}}_{k|k-1}\): **"New interest"** (Innovation, the difference between measurement and prediction). **新息**（Innovation，测量与预测的差异）。
- **Physical Significance 物理意义**：  
  The prediction state is corrected through the new interest, and the correction amount is controlled by the Kalman gain. 通过新息修正预测状态，修正量由卡尔曼增益控制。 -->
  ![alt text](image/image38.png)

#### **(3) Covariance Update 协方差更新**
<!-- \[
\mathbf{P}_{k|k} = (\mathbf{I} - \mathbf{K}_{k}\mathbf{H}_{k})\mathbf{P}_{k|k-1}
\]
- **Symbol Definition 符号定义**：
  - \(\mathbf{P}_{k|k}\): Posterior covariance (updated uncertainty). 后验协方差（更新后的不确定性）。
  - \(\mathbf{I}\): Identity Matrix 单位矩阵。
- **Physical Significance 物理意义**：  
  The fusion of measurements leads to a reduction in state uncertainty （\(\mathbf{P}_{k|k} \leq \mathbf{P}_{k|k-1}\)）, as quantified by the updated covariance matrix. 融合测量后，状态的不确定性降低（\(\mathbf{P}_{k|k} \leq \mathbf{P}_{k|k-1}\)）。 -->
  ![alt text](image/image39.png)


### **Symbol Summary Table 符号总结表**
<!-- | Symbol 符号                 | Implication 含义                          | Corresponding formula position 对应公式位置               |
|----------------------|-----------------------------|--------------------------|
| \(\hat{\mathbf{x}}\) | State estimation (with a hat indicating an estimated value) 状态估计（带帽子表示估计值）       | All state equations 所有状态方程              |
| \(\mathbf{P}\)       | State covariance matrix 状态协方差矩阵                 | Predict and update the covariance equation of the steps 预测和更新步骤的协方差方程  |
| \(\mathbf{A}\)       | State Transition Matrix 状态转移矩阵                   | State Prediction Equation 状态预测方程              |
| \(\mathbf{B}, \mathbf{u}\) | Control Input Matrix and Input Vector 控制输入矩阵和输入向量      | State Prediction Equation 状态预测方程              |
| \(\mathbf{Q}\)       | Process noise covariance 过程噪声协方差                 | Covariance prediction equation 协方差预测方程            |
| \(\mathbf{H}\)       | Measurement Matrix 观测矩阵                      | Kalman Gain and Update Equation 卡尔曼增益和更新方程       |
| \(\mathbf{R}\)       | The covariance of Measure Noise 测量噪声协方差                 | Kalman gain denominator 卡尔曼增益分母            |
| \(\mathbf{K}\)       | Kalman Gain 卡尔曼增益                    | State and Covariance Update Equation 状态和协方差更新方程       |
| \(\mathbf{z}\)       | practical Measured Value 实际测量值                    | The new information term in the State Update Equation 状态更新方程中的新息项     | -->
![alt text](image/image40.png)


### **Intuitive Understanding 直观理解**
The Kalman filter gradually optimizes the estimation through the **prediction-update** cycle: 卡尔曼滤波通过**预测-更新**循环逐步优化估计：  
1. **Prediction 预测**：Predict the current state (including uncertainties) based on the model. 基于模型推测当前状态（含不确定性）。  
2. **Update 更新**：The prediction is corrected with actual measurements, and the weights are dynamically adjusted by Kalman gain. 用实际测量修正预测，权重由卡尔曼增益动态调整。  
3. **Core Idea 核心思想**：Optimal estimation is achieved through probabilistic fusion of Gaussian distributions. 通过高斯分布的概率融合，实现最优估计。  

**Example 举例**：  
- Robot positioning: Predicted position (including error) + GPS measurement (including noise) → More accurate position estimation. 机器人定位：预测位置（含误差） + GPS测量（含噪声） → 更精确的位置估计。

#### 1.4.1.5.2. EKF and UKF Adaptations

- **EKF:** Incorporate Jacobians in prediction and update steps. 在预测和更新步骤中加入雅可比矩阵。
- **UKF:** Use sigma points to approximate the distributions. 用sigma点来近似分布。



### 1.4.1.6. Practical Considerations

#### 1.4.1.6.1. Tuning the Filter 微调滤波器

- **Process Noise Covariance (\(\mathbf{Q}\)):** Adjust to reflect how much uncertainty is in the model. 调整以反映模型中有多少不确定性。
- **Measurement Noise Covariance (\(\mathbf{R}\)):** Set based on the accuracy of the sensors. 根据传感器的精度设置。

#### 1.4.1.6.2. Initialization 初始化

- **State Estimate:** Should be as close as possible to the true initial state. 应该尽可能接近真实的初始状态。
- **Covariance Matrix:** Reflect the confidence in the initial estimate. 反映对初始估计的信心。

#### 1.4.1.6.3. Numerical Stability 数值稳定性

- **Covariance Matrix Symmetry 协方差矩阵对称性:** Ensure that \(\mathbf{P}\) remains symmetric and positive semi-definite. 确保\(\mathbf{P}\)保持对称和正半确定性。
- **Avoiding Divergence 避免发散:** Monitor innovations (measurement residuals) to detect divergence. 监测新息（测量残差）以检测差异。



As the conclusion, the Kalman Filter and its variants are powerful tools for state estimation in various systems, especially when dealing with uncertainties and noise. By selecting the appropriate variant based on the system's characteristics and application requirements, one can achieve robust and accurate estimation results. 综上所述，卡尔曼滤波器及其变体是各种系统状态估计的有力工具，特别是在处理不确定性和噪声时。通过根据系统的特点和应用需求选择合适的变量，可以获得鲁棒和准确的估计结果。

Understanding the mathematical foundations, assumptions, and limitations of each filter variant is crucial for successful implementation. Continuous advancements in filter design and computation methods are expanding their applicability to increasingly complex and nonlinear systems. 了解每个过滤器变体的数学基础、假设和限制对于成功实现至关重要。滤波器设计和计算方法的不断进步扩大了它们在日益复杂和非线性系统中的适用性。





### 1.4.2 Computer Vision - 计算机视觉 <a id="Scene-Understanding"></a>

#### 1.4.2.1 2D Vision - 二维视觉 <a id="2D-Vision"></a>


#### 1.4.2.2 3D Vision - 三维视觉 <a id="3D-Vision"></a>


#### 1.4.2.3 4D Vision - 四维视觉 <a id="4D-Vision"></a>
 

#### 1.4.2.4 Subdivision of Application Domains - 应用领域细分 <a id="Subdivision-of-application-domains"></a>

##### 1.4.2.4.1 Visual Prompting - 视觉提示 <a id="Visual-Prompting"></a>


##### 1.4.2.4.2 Affordance Grounding - 可供性锚定 <a id="Affordance-Grounding"></a>

###### 1.4.2.4.2.1 2D - 二维 <a id="Two-Dimension"></a>


###### 1.4.2.4.2.2 3D - 三维 <a id="Three-Dimension"></a>




### 1.4.2 Scene Understanding - 场景理解 <a id="Scene-Understanding"></a>

#### 1.4.2.1 Segmentation - 图像分割 <a id="Segmentation"></a>




## 1.5 Learning - 学习 <a id="Learning"></a>

### 1.5.1 Intro to Machine Learning - 机器学习入门 <a id="Intro-to-Machine-Learning"></a>
 

### 1.5.2 Reinforcement Learning - 强化学习 <a id="Reinforcement-Learning"></a>


### 1.5.3 Imitation Learning - 模仿学习 <a id="Imitation-Learning"></a>




## 1.6 Multi-Robot Systems - 多机器人系统 <a id="Multi-Robot-Systems"></a>




## 1.7 Simulation and Modeling - 仿真与建模 <a id="Simulation-and-Modeling"></a>




## 1.8 Physical Interaction - 物理交互 <a id="Physical-Interaction"></a>




## 1.9 Ethics and Social Implications - 伦理与社会问题 <a id="Ethics-and-Social-Implications"></a>




# 2. Tools - 工具 <a id="tools"></a>

## 2.1 Software - 软件 <a id="software"></a>

### 2.1.1 General Tools - 常用工具 <a id="General-Tools"></a>


### 2.1.2 Simulators - 仿真器 <a id="simulators"></a>


### 2.1.3 Robot Description - 机器人描述格式 <a id="Robot-Description"></a>

**"URDF, Xacro, or MJCF formats"** are file formats used to describe the object models in robots or simulation environments, and are usually referred to as **robot model files** or **robot description formats**. They are mainly used for robot simulation, control and rendering, and are common model description methods in robotics and simulators. The following is a detailed explanation:
**“URDF, Xacro, or MJCF formats”** 是用于描述机器人或仿真环境中的物体模型的文件格式，通常被称为**机器人模型文件**或**机器人描述格式**。它们主要用于机器人仿真、控制和渲染，是机器人学和仿真器中常见的模型描述方式。以下是详细解释：

#### **2.1.3.1. Introduction 介绍**

##### **2.1.3.1.1 URDF (Unified Robot Description Format)**
  - **Terminology 全称**：Unify the description format of robots. 统一机器人描述格式。
  - **Function 作用**：URDF is an XML-based file format used to describe the physical structure, kinematics, dynamics, geometry and joint configuration of robots. URDF 是一种基于 XML 的文件格式，用于描述机器人的物理结构、运动学、动力学、几何形状和关节配置。
  - **Application 用途**：
    - Define the structure and attributes of the robot model. 定义机器人模型的结构和属性。
    - Load the robot in a simulator (such as Gazebo). 在仿真器（如 Gazebo）中加载机器人。
    - It is used for visualization and control in the Robot Operating System (ROS). 在机器人操作系统（ROS）中用于可视化和控制。
  - **Content 内容**：
    This includes the geometry, size, mass, inertia, joint type (such as rotary joints, sliding joints) and connection method of each component of the robot. 包括机器人每个部件的几何形状、大小、质量、惯性、关节类型（如旋转关节、滑动关节）及其连接方式。

##### **2.1.3.1.2 Xacro (XML Macros)**
- **Terminology 全称**：XML Macros(XML 宏)。
- **Function 作用**：Xacro is an extended XML format specifically designed to simplify the writing of URDF files. Xacro 是一种扩展的 XML 格式，专门为简化 URDF 文件的编写而设计。
- **Characteristic 特点**：
  - 通过 **宏定义** 和 **参数化** 来减少重复代码。 Reduce repetitive code through **macro definitions** and **parameterization**.
  - 提高复杂机器人模型的可读性和可维护性。 Improve the readability and maintainability of complex robot models.

- **Application 用途**：
  - Generate dynamic or complex URDF files. 生成动态或复杂的 URDF 文件。
  - It is widely used in ROS to generate parametric robot descriptions. 在 ROS 中广泛用于生成参数化的机器人描述。

##### **2.1.3.1.3 MJCF (MuJoCo XML Format)**
- **Terminology 全称**：MuJoCo（Multi-Joint Dynamics with Contact）描述格式。
- **Function 作用**：MJCF is an XML format dedicated to the MuJoCo simulator, used to define the dynamic models of robots or environments. MJCF 是 MuJoCo 仿真器专用的 XML 格式，用于定义机器人或环境的动力学模型。
- **Characteristic 特点**：
  - It focuses on physical simulation and supports high-precision dynamic calculations. 侧重物理仿真，支持高精度的动力学计算。
  - It is able to define complex joint systems, contact models, controllers, etc. can be defined. 可定义复杂的关节系统、接触模型、控制器等。
- **Application 用途**：
  - Load the robot model in the MuJoCo simulator. 在 MuJoCo 仿真器中加载机器人模型。
  - It is used for reinforcement learning and robot control research. 用于强化学习和机器人控制研究。


#### **2.1.3.2. Application 用途**

These formats are typically used to describe **object models in robots or simulation environments**, including: 这些格式通常用于描述**机器人或仿真环境中的物件模型**，包括：
1. **Physical model of the robot 机器人物理模型**：
   - Define the shape, size, position, joint type, etc. of each component of the robot. 定义机器人各部件的形状、大小、位置、关节类型等。
   - Including various robot models such as robotic manipulations, wheeled robots, quadruped robots, etc.包括机器人臂、轮式机器人、四足机器人等各种机器人模型。
2. **Environment Description 环境描述**：
   - Define other objects in the simulation environment, such as obstacles, terrain, furniture, etc. 定义仿真环境中的其他物体，比如障碍物、地形、家具等。
3. **Dynamics and kinematics simulation 动力学和运动学仿真**：
   - Define the physical properties of the robot (such as mass and inertia tensor) and joint motion limitations for high-precision simulation in physical simulators (such as Gazebo and MuJoCo). 定义机器人的物理属性（如质量、惯性张量）和关节运动限制，用于物理仿真器（如 Gazebo、MuJoCo）中进行高精度仿真。
4. **Visualization 可视化**：
   - It is used to visualize robot models and help developers understand the structure and movement behavior of robots. 用于可视化机器人模型，帮助开发者理解机器人结构和运动行为。
5. **机器人控制 Robot Control**：
   - Import the model into the control system for tasks such as path planning and motion control. 将模型导入到控制系统中，用于路径规划、运动控制等任务。


#### **2.1.3.3. Category 类别**

These formats can be classified as **"object model description files in robot simulators"**, but more accurate terms include: 可以将这些格式归类为 **机器人仿真器中的物件模型描述文件**，但更准确的术语包括：

##### **2.1.3.3.1 Robot description format 机器人描述格式**
- They are file formats specifically designed to describe the structure, kinematics and dynamics of robots. 它们是专门用于描述机器人结构、运动学和动力学的文件格式。

##### **2.1.3.3.2 Simulation environment model 仿真环境模型**
- In addition to the robots themselves, they can also describe objects in the simulation environment, and thus can also be classified as **"object model description files in the simulator"**. 除了机器人本身，它们也可以描述仿真环境中的物体，因此也可以归为 **仿真器中的物件模型描述文件**。


#### **2.1.3.4. Relationship and Differences 关系与区别**

| **format 格式**  | **Describing object 描述对象**               | **Characteristic 特点**                                                                                       | **Scenarios 常用场景**                          |
|-----------|----------------------------|------------------------------------------------------------------------------------------------|---------------------------------------|
| **URDF**  | robot model 机器人模型                | 简单、直接，适合静态和基本的机器人描述。 Simple and straightforward, suitable for static and basic robot descriptions.                                                       | ROS中的机器人建模与仿真。            |
| **Xacro** | Parametric robot model 参数化机器人模型          | XML-macro-extension-based URDF is more suitable for the description of complex robot models and supports code reuse and dynamic generation. 基于 XML 宏扩展的 URDF，更适合复杂机器人模型的描述，支持代码复用和动态生成。                     | Generate complex URDF files for ROS simulation. 生成复杂 URDF 文件，用于 ROS 仿真。   |
| **MJCF**  | Robots and environmental models 机器人和环境模型          | Emphasizing dynamic simulation, supporting complex contact modeling, it is more often used in reinforcement learning and robot control research. 强调动力学仿真，支持复杂的接触建模，更多用于强化学习和机器人控制研究。                          | MuJoCo 仿真器（如 OpenAI Gym 环境）。 |


#### **2.1.3.5. Usage tools and Simulator support 它们的使用工具和仿真器支持**

- **URDF 和 Xacro**：
  - **Support Tool 支持工具**：ROS（Robot Operating System）。
  - **Support Simulator 支持仿真器**：CoppeliaSim(V-ERP), Gazebo、RViz 等 ROS 生态中的工具。 Tools in the ROS ecosystem such as CoppeliaSim(V-ERP), Gazebo, and RViz.
- **MJCF**：
  - **Support Tool 支持工具**：MuJoCo（Multi-Joint Dynamics with Contact）。
  - **Support Simulator 支持仿真器**：MuJoCo 仿真器，常与 OpenAI Gym 和强化学习框架结合使用。 The MuJoCo simulator, often used in combination with OpenAI Gym and reinforcement learning frameworks.


#### **2.1.3.6. Sample Files 示例文件**

##### **URDF Example 示例**
```xml
<robot name="simple_robot">
  <link name="base_link">
    <inertial>
      <mass value="1.0"/>
      <origin rpy="0 0 0" xyz="0 0 0"/>
      <inertia ixx="1.0" ixy="0" ixz="0" iyy="1.0" iyz="0" izz="1.0"/>
    </inertial>
    <visual>
      <geometry>
        <box size="1 1 1"/>
      </geometry>
    </visual>
  </link>
</robot>
```

##### **Xacro Example 示例**
```xml
<?xml version="1.0"?>
<robot xmlns:xacro="http://www.ros.org/wiki/xacro" name="param_robot">
  <xacro:property name="length" value="1.0"/>
  <link name="base_link">
    <visual>
      <geometry>
        <box size="${length} ${length} ${length}"/>
      </geometry>
    </visual>
  </link>
</robot>
```

##### **MJCF Example 示例**
```xml
<mujoco>
  <worldbody>
    <body name="box" pos="0 0 0">
      <geom type="box" size="0.5 0.5 0.5" rgba="1 0 0 1"/>
    </body>
  </worldbody>
</mujoco>
```


#### **2.1.3.7. Conclusion 总结**

- **URDF, Xacro, MJCF** are model description files ** used to describe robots and simulation environments. **URDF, Xacro, MJCF** 是用于描述机器人和仿真环境的**模型描述文件**。
- **URDF/Xacro** : Mainly used in ROS and Gazebo simulation environments, focusing on robot modeling. **URDF/Xacro**：主要用于 ROS 和 Gazebo 仿真环境，专注于机器人建模。
- **MJCF** : Used in the MuJoCo simulator, it focuses on high-precision dynamic simulation. **MJCF**：用于 MuJoCo 仿真器，专注于高精度动力学仿真。
- They are key tools for defining robot or object models in robot simulators and can be simply understood as **"object model description files in the simulator"**. 它们是机器人仿真器中定义机器人或物件模型的关键工具，可以简单理解为 **“仿真器中的物件模型描述文件”**。




## 2.2 Hardware - 硬件 <a id="hardware"></a>




# 3. Literature Review - 文献综述 <a id="literature-review"></a>

## 3.1 Traditional Control - 传统控制 <a id="Traditional-Control"></a>

- A manipulator-assisted multiple UAV landing system for USV subject to disturbance 
*R. Xu, C. Liu, Z. Cao, Y. Wang and H. Qian; Ocean Engineering 2024 Vol. 299 Pages 117306; DOI: 10.1016/j.oceaneng.2024.117306*

  **想解决的问题**

  本文旨在解决无人机（UAV）在受海浪扰动的无人艇（USV）上安全、准确着陆的问题。由于海浪引起的USV快速、不规则运动，传统的直接着陆方法面临挑战，要求较大的着陆平台才能保证着陆安全，限制了USV可携带的无人机数量。因此，作者希望设计一种系统，能够在有限的甲板空间内，实现多架无人机在受扰动的USV上安全着陆。

  **具体做法**

  *系统（设计）部分：*

  1. **Manipulator-Assisted Landing System（机械臂辅助着陆系统）**：设计并实现了一个基于机械臂的无人机着陆辅助系统。该系统包括一个七自由度的机械臂、捕捉器、无人机上的系留着陆系统和着陆平台。机械臂安装在USV上，负责跟踪并捕获无人机。

  2. **Catcher（捕捉器）设计**：机械臂末端配备了一个专门设计的捕捉器。捕捉器包含步进电机、磁铁阵列、PVC线等。磁铁阵列用于快速吸引无人机释放的对接块，PVC线通过旋转机构收紧，以锁定对接块，防止因USV扰动引起的连接中断。

  3. **Tethered Landing System（系留着陆系统）**：在无人机上安装了一个系留着陆系统，包括对接块、对接座和线轴。无人机在接近USV后，释放带有铁板的对接块。机械臂捕获对接块后，无人机通过线轴收紧绳索，实现安全着陆。对接结构设计成四面体形状，确保无人机在着陆过程中的姿态稳定。

  4. **Landing Platform（着陆平台）设计**：设计了一个可锁定和释放无人机的着陆平台。平台包含倾斜板、水平板和由舵机驱动的夹持器。机械臂将无人机精确放置在着陆平台上，夹持器旋转固定无人机，防止其滑落。

  5. **Visual Feedback System（视觉反馈系统）**：采用红外相机阵列构建视觉反馈系统，实时捕获无人机和机械臂的位置和姿态，反馈频率高达200 Hz，满足高速捕获任务的需求。

  6. **Control System（控制系统）**：基于ROS构建集中式控制系统，各设备通过无线网络连接，形成统一的控制和通信平台。机械臂的控制包括任务空间的MPC控制器和关节空间的PD控制器，并引入自适应估计器来补偿因基座运动引起的扰动。

  *算法部分：*

  1. **Uncertainty Estimator（不确定性估计器）设计**：针对基座扰动引起的机械臂控制精度下降问题，提出了一种自适应估计器。估计器通过在关节位置指令中加入补偿项，估计并补偿因基座运动引起的关节位置误差，而无需精确的动力学模型。

  2. **MPC Tracking Controller（MPC跟踪控制器）**：在任务空间中构建MPC控制器，实现对无人机位置的精确跟踪。控制器考虑了关节状态约束，通过预测模型优化控制输入，确保机械臂在有限的关节范围内安全运行。

  3. **Kalman Filter for Position Feedback（位置反馈的卡尔曼滤波器）**：为提高视觉系统的位置反馈精度，针对环境光干扰，采用卡尔曼滤波器对无人机位置进行滤波和预测，提高了系统的鲁棒性。

  4. **System Control Strategy（系统控制策略）**：制定了完整的着陆控制策略，包括三个阶段：
    - **跟踪和捕获阶段**：机械臂在任务空间中跟踪无人机，捕获其释放的对接块。
    - **系留着陆阶段**：机械臂稳定末端执行器，无人机通过收紧绳索实现安全着陆。
    - **精确放置阶段**：机械臂调整无人机姿态，将其精确放置在着陆平台上，完成着陆任务。

  **效果**

  - **仿真验证**：通过Matlab/Simscape和Robotics System Toolbox进行仿真，验证了提出的机械臂控制器的可行性。结果显示，引入自适应估计器的MPC控制器相比传统控制器，位置跟踪精度提高了约26.9%，姿态跟踪精度提高了约40.8%。

  - **室内实验**：在受控的室内环境下进行实验，验证了控制器的实际性能。结果表明，引入估计器后，机械臂的末端位置误差平均减少了65%，姿态误差平均减少了62%。

  - **野外实验证明**：在实际的水面环境下进行了系统功能测试。在USV受到约12度摇摆扰动的情况下，系统成功实现了无人机的捕获和着陆。实验验证了系统在真实海洋环境下的有效性和鲁棒性。

  **关键词**

  - 无人机安全着陆, 机械臂辅助着陆, 系留着陆系统, 不确定性估计器, 模型预测控制（MPC）, 自适应控制, 视觉反馈系统, 海洋环境机器人, 无人艇（USV）, 多无人机协同


## 3.2 Model Predictive Control - 模型预测控制 <a id="Model-Predictive-Control"></a>

- Implementation of Nonlinear Model Predictive Path-Following Control for an Industrial Robot 
*T. Faulwasser, T. Weber, P. Zometa and R. Findeisen; IEEE Transactions on Control Systems Technology 2017 Vol. 25 Issue 4 Pages 1505-1511; DOI: 10.1109/tcst.2016.2601624*

  **想解决的问题**

  本文旨在解决在工业机器人中，实现路径跟踪控制的实时、非线性、模型预测控制（NMPC）问题。具体而言，作者关注的是在存在输入和状态约束的情况下，机器人如何精确地跟随预定的几何路径，同时满足实时性的要求。这对于诸如铣削、胶合或高精度测量等需要精确路径跟踪的机器人应用非常重要。

  **具体做法**

  *算法部分：*

  1. **路径跟踪问题的重新表述：**
    - 将传统的轨迹跟踪问题重新表述为路径跟踪问题，其中路径仅由几何参考定义，而速度并未预先指定。这意味着控制器需要计算不仅仅是跟随路径的控制输入，还需要动态调整路径参数的演化，以确保精确的路径跟踪。
    - 引入了一个虚拟状态变量 \( \theta \)（路径参数），并通过一个额外的微分方程（称为定时律）来描述其时间演化：
      \[
      \theta^{(r+1)} = v
      \]
      其中，\( r \) 是定时律的阶数，\( v \) 是虚拟输入。

  2. **非线性模型预测路径跟踪控制器（MPFC）的设计：**
    - **增广系统建模：** 将原始系统与定时律结合，形成一个增广系统：
      \[
      \begin{cases}
      \dot{x} = f(x, u) \\
      \dot{z} = l(z, v) \\
      e = h(x) - p(z_1)
      \end{cases}
      \]
      其中，\( z \) 是包含路径参数及其导数的虚拟状态向量，\( e \) 是路径跟踪误差。
    - **优化问题构建：** 在每个采样时刻，求解以下优化问题：
      \[
      \min_{u(\cdot), v(\cdot)} \int_{t_k}^{t_k + T} F(e(\tau), z(\tau), u(\tau), v(\tau)) d\tau
      \]
      **约束条件：**
      - 系统动力学约束
      - 输入和状态约束
      - 路径跟踪误差定义
    - **成本函数设计：** 采用二次型成本函数，包含路径误差和控制输入的加权项：
      \[
      F(e, z, u, v) = \|e\|_Q^2 + \|(u, v)\|_R^2
      \]
      权重矩阵 \( Q \) 和 \( R \) 被设计为对路径跟踪误差和控制努力的权衡。

  *系统（设计）部分：*

  1. **机器人模型简化：**
    - 选择了KUKA LWR IV机器人，并只激活了关节1、2和4，其他关节固定。这简化了机器人的动力学模型。
    - 动力学模型：
      \[
      B(q)\ddot{q} + C(q, \dot{q})\dot{q} + \tau_F(\dot{q}) + g(q) = \tau
      \]
      其中，\( q \) 是关节角度向量，\( \tau \) 是关节力矩向量。
    - 为了加速计算，忽略了摩擦力矩中的库仑摩擦部分（用反正切函数近似），并假设机器人内部的重力补偿功能，可以忽略重力项 \( g(q) \)。

  2. **实时优化与控制实现：**
    - **自动代码生成：** 使用ACADO Toolkit的自动代码生成功能，生成C/C++代码，实现实时优化求解。
    - **输入参数化：** 控制输入被分段常数地参数化，采用10个等距间隔，每个间隔10毫秒，总的预测时域为100毫秒。
    - **实时迭代方案：** 在每个控制周期内，只执行一次SQP迭代，这是实时迭代方案的一部分，有助于满足实时性的要求。
    - **系统状态估计：** 通过磁阻编码器获得关节角度 \( x_1 \)，但关节速度 \( x_2 \) 需要通过对关节角度的有限差分和低通滤波来估计。

  3. **实验设置与接口：**
    - **硬件接口：** 使用KUKA LWR IV的快速研究接口（Fast Research Interface），允许最高1kHz的采样率。
    - **控制模式：** 机器人在关节特定的阻抗控制模式下运行，控制器可以叠加额外的力矩指令。
    - **软件实现：** 控制算法在外部PC工作站上运行，采用Linux操作系统和高性能CPU，确保在每个1毫秒的采样周期内完成优化求解和控制指令发送。

  **效果**

  - **实验验证：** 在KUKA LWR IV机器人上进行了两组实验：绘制三叶草形状的路径和绘制“Hello”字样的路径。
    - **三叶草路径实验：**
      - 实现了路径跟踪误差在1毫米以内的高精度路径跟踪。
      - 控制器能够根据路径的曲率动态调整速度，在直线路段加速，转弯处减速。
    - **“Hello”路径实验：**
      - 引入了外部扰动（人工施加外力），验证了控制器的鲁棒性。
      - 控制器能够在受到扰动时自动调整路径参数的速度，减慢或停止在路径上的移动，扰动消除后迅速回到路径并继续跟踪。
  - **实时性与计算效率：**
    - 在实验中，优化求解的最大时间为0.48毫秒，平均为0.24毫秒，满足1kHz的控制频率要求。
    - 证明了所提出的MPFC方案在实际机器人系统中具有实时可行性和良好的控制性能。

  **关键词**

  - 非线性模型预测控制（NMPC）， 路径跟踪控制， 实时优化， 机器人工程， KUKA LWR IV机器人， 增广系统建模， 虚拟状态与定时律， 自动代码生成， 实时迭代方案， 控制器鲁棒性

---

- Trajectory Generation for Multiagent Point-To-Point Transitions via Distributed Model Predictive Control 
*C. E. Luis and A. P. Schoellig; IEEE Robotics and Automation Letters 2019 Vol. 4 Issue 2 Pages 375-382; DOI: 10.1109/lra.2018.2890572*

  **想解决的问题**

  本文旨在解决多智能体系统（尤其是无人机编队）在进行点对点转移任务时的轨迹生成问题。具体来说，作者关注多智能体如何在有限的时间内，从初始位置安全地过渡到指定的目标位置，同时避免碰撞，并满足状态和控制输入的约束。在多智能体系统中，生成碰撞自由的轨迹是一个关键且具有挑战性的问题，特别是当参与的智能体数量较多时，计算复杂度和实时性要求使得传统的集中式方法难以适用。因此，作者希望开发一种分布式的、高效的轨迹生成算法，能够在保障安全和性能的前提下，提高计算效率，适用于大型无人机集群的实时或近实时轨迹规划。

  **具体做法**

  *算法部分：*

  1. **分布式模型预测控制（DMPC）：**

    - **同步DMPC框架：** 作者采用同步的分布式模型预测控制框架，每个智能体在每个时间步同时计算其最优控制输入序列。智能体在计算之前共享其预测的未来状态信息，这样可以在考虑邻居智能体未来运动的情况下，进行碰撞检测和避免。

    - **动态模型：** 智能体被建模为三维空间中的点质量，具有双积分器动力学，即位置和速度受加速度控制。离散化后，得到线性模型，用于预测未来的状态。

  2. **按需碰撞避免策略：**

    - **预测碰撞检测：** 每个智能体利用共享的邻居智能体的未来状态信息，在预测域内检测未来是否会发生碰撞。只在检测到可能碰撞的情况下，才在优化问题中引入碰撞避免约束。

    - **碰撞避免约束：**

      - **椭球碰撞模型：** 碰撞避免被建模为智能体之间的椭球形安全区域，考虑到无人机（如四旋翼）的空气动力学效应，特别是下洗气流的影响，椭球在垂直方向上拉长。

      - **软约束处理：** 为了避免因硬约束导致优化问题不可行，碰撞避免约束被处理为软约束。引入了松弛变量，允许约束在一定范围内被违反，但在代价函数中对违反程度进行惩罚。

  3. **优化问题的构建：**

    - **目标函数：** 优化目标包括三个部分：

      - **轨迹误差惩罚：** 尽量减小预测轨迹末端与目标位置之间的误差。

      - **控制努力惩罚：** 尽量减小控制输入（加速度）的大小，达到节省能源或平滑控制的目的。

      - **控制变化率惩罚：** 尽量减小连续控制输入之间的变化率，平滑控制动作。

    - **物理约束：** 包括加速度的最大最小值约束、位置的范围约束，以及必要时的碰撞避免约束。

    - **优化求解：** 在每个时间步，智能体构建并求解上述优化问题，得到未来一段时间的控制输入序列，但只执行第一个控制输入。

  *系统（设计）部分：*

  1. **智能体模型与参数设置：**

    - **简化的动力学模型：** 为了提高计算效率，将无人机简化为点质量模型，采用双积分器动力学。虽然简化了模型，但仍然能捕捉到无人机的基本运动特性。

    - **碰撞模型参数：** 碰撞避免中使用的椭球模型参数（如椭球的尺度因子）被设置为符合真实无人机（如Crazyflie 2.0四旋翼无人机）特性的值，以考虑实际运行中的安全距离。

  2. **算法实现与优化：**

    - **并行计算策略：** 为了进一步减少计算时间，作者将智能体分成若干个集群，在多核处理器上并行求解各个集群内智能体的优化问题。集群内的智能体顺序地求解，但整个过程是并行的。

    - **算法实现工具：** 

      - **仿真环境：** 在MATLAB中实现算法，用于仿真测试和参数调试。

      - **实验环境：** 使用C++语言实现算法，采用OOQP（Object-Oriented Quadratic Programming）库作为优化求解器，以满足实时性的要求。

  3. **实验平台与通信架构：**

    - **无人机平台：** 实验使用Crazyflie 2.0微型四旋翼无人机，具有体积小、成本低的优点，适合进行多无人机集群实验。

    - **位置跟踪与控制：** 利用顶置的运动捕捉系统实时获取无人机的位置，并通过无线电通信将位置指令和估计发送给无人机。无人机内部运行基于位置的控制器，以跟踪给定的轨迹。

    - **无线通信：** 通过无线电链接与每架无人机通信，以实现控制指令的下达和状态信息的获取。

  **效果**

  - **计算效率提升：** 相比于基于序列凸规划（SCP）的方法，所提出的DMPC算法显著减少了计算时间。在仿真中，计算时间相比集中式SCP方法减少了高达97%，相比解耦的SCP方法减少了85%。同时，算法具有更好的可扩展性，适用于更大规模的智能体集群。

  - **轨迹质量与成功率：** 

    - **轨迹最优性：** 虽然以分布式方式进行规划，DMPC算法生成的轨迹在总行驶距离上仅比集中式方法增加了微小的百分比（例如，在20个智能体的情况下，增加了不到2%），表现出接近最优的性能。

    - **成功率：** 在仿真中，即使在高密度环境和较多智能体（多达200个）情况下，DMPC算法仍能保持较高的任务完成率和碰撞避免成功率。

  - **实验验证：** 

    - **小规模实验：** 在真实环境下进行了多次实验，使用了多达25架Crazyflie 2.0无人机，验证了算法在实际物理平台上的有效性。

    - **复杂场景测试：** 实验包括从初始位置阵列转移到指定图案（如字母“DSL”）的复杂点对点转移任务，验证了算法在复杂条件下的性能。

    - **实时性：** 算法能够在合理的时间内完成轨迹规划（例如，在25架无人机的实验中，规划时间约为1.8秒），满足实际应用的需求。

  **关键词**

  - 分布式模型预测控制（DMPC）, 多智能体系统, 轨迹生成, 碰撞避免, 无人机集群, 同步算法, 按需碰撞避免, 软约束, 并行计算, 四旋翼无人机

---

- Predictive End-Effector Control of Manipulators on Moving Platforms Under Disturbance 
*J. Woolfrey, W. Lu and D. Liu; IEEE Transactions on Robotics 2021 Vol. 37 Issue 6 Pages 2210-2217; DOI: 10.1109/tro.2021.3072544*

  **想解决的问题**

  本文针对移动平台（如无人空中车辆、无人水下车辆或船舶等）上操作的机械臂在受到基座扰动时，如何实现末端执行器的精准控制。传统的反馈控制方法在处理大的外部扰动时可能不足，因此作者希望开发一种能够预测基座运动并针对扰动进行补偿的控制方法，以提高机械臂在复杂环境下的轨迹跟踪精度。

  **具体做法**

  *算法部分：*

  1. **基座运动预测：**

    - **时间序列预测模型：** 利用历史的基座状态信息（位置和姿态），采用自回归（AR）模型对基座的未来运动进行预测。模型形式为：

      \[
      y(t) = \sum_{i=1}^{p} \alpha_i y(t - i)
      \]

      其中，\( y(t) \) 表示基座在时间 \( t \) 的状态（位置或欧拉角之一），\( p \) 为模型的阶数，\( \alpha_i \) 为模型系数。模型系数在每个控制循环中通过线性最小二乘法进行优化，以适应局部条件。

  2. **预测控制器设计：**

    - **轨迹转换：** 根据预测的基座未来姿态 \( \hat{T}_I^B(t + i) \)，将期望的末端执行器轨迹从惯性坐标系转换到基座坐标系：

      \[
      \hat{T}_B^D(t + i) = \hat{T}_B^I(t + i) T_I^D(t + i)
      \]

    - **代价函数构建：** 在任务空间中构建一个二次型代价函数，包含以下两部分：

      - **轨迹跟踪误差最小化：**

        \[
        c_1 = \|\hat{e} - A u\|^2_G = (\hat{e} - A u)^T G (\hat{e} - A u)
        \]

        其中，\( \hat{e} \) 是预测的末端执行器相对于基座的位姿误差向量，\( u \) 是未来控制输入（末端执行器速度）序列，\( A \) 是将速度转换为位移的矩阵，\( G \) 是权重矩阵。

      - **控制输入平滑项：**

        \[
        c_2 = \|u_0 - B u\|^2_Q = (u_0 - B u)^T Q (u_0 - B u)
        \]

        其中，\( u_0 \) 是上一次的控制输入，\( B \) 用于计算连续控制输入之间的差异，\( Q \) 是权重矩阵。

    - **优化问题求解：** 将上述两部分结合，形成一个带线性不等式约束的二次规划（QP）问题：

      \[
      \min_{u} \quad c_1 + c_2
      \]

      **约束条件：**

      - **当前时刻的关节速度约束：**

        \[
        q_{\text{min}} \leq J(q(t))^\dagger u(t) \leq q_{\text{max}}
        \]

        其中，\( J(q(t))^\dagger \) 是当前关节位置下雅可比矩阵的伪逆，\( q_{\text{min}} \) 和 \( q_{\text{max}} \) 是关节速度的上下限。

      由于仅对当前时刻的控制输入施加了关节约束，而对未来时刻的控制动作不加约束，从而简化了优化问题，保证了QP问题的线性特性和求解效率。

  *系统（设计）部分：*

  - **机械臂系统：**

    - 采用一个六自由度的工业机器人UR3作为实验平台。机械臂安装在一个可自由移动的基座上，基座的运动由人为干扰模拟（如手动摇动基座）。
    - 在机械臂基座上固定一个带有增强现实标记的板，用于与摄像头帧之间的位姿估计。摄像头用作惯性固定帧。

  - **传感与测量：**

    - 使用摄像头和增强现实标记获取基座相对于惯性帧的姿态信息。
    - 通过实时采集基座的位置信息，利用时间序列模型进行基座运动预测。

  - **控制系统：**

    - **基座运动预测模块：** 通过AR(2)模型，对基座的位置和姿态进行未来若干时刻的预测。
    - **预测控制器：** 使用预测的基座运动，将期望的末端执行器轨迹转换到基座坐标系下。构建QP优化问题，求解最优的末端执行器速度序列，仅对当前时刻的控制输入施加关节速度约束，确保运动的可行性。

  **效果**

  - **仿真实验：**

    - 在七自由度机械臂的仿真环境中，基座运动来自实际AUV在波浪中的IMU数据。结果表明，使用基于预测的控制方法，相对于传统的PI反馈控制，轨迹跟踪误差减少了高达90%。
    - 在关节速度受限的情况下（如限制在6转/分钟），带约束的QP方法比无约束的QP方法的跟踪误差降低了16%，比反馈控制降低了75%。

  - **物理实验：**

    - 在UR3机械臂上进行了实验。将机械臂基座安装在一个可移动的木板上，通过手动移动基座模拟外部扰动。
    - 实验结果显示，基于预测的控制方法相比PI反馈控制，末端执行器的**位置跟踪误差减少了77%**。尽管由于UR3的安全机制，控制信号被限制在60%，但预测控制方法仍然显著提高了控制精度。

  - **鲁棒性测试：**

    - 在不同基座运动频率下进行了测试，结果表明，预测控制方法在一定范围内对扰动频率具有鲁棒性，跟踪误差明显低于传统的反馈控制方法。

  **关键词**

  - 预测控制, 移动机器人, 优化, 二次规划（QP）, 机器人运动控制, 时间序列预测, 基座扰动补偿, 机械臂末端控制, 移动操纵器, 跟踪误差减少

---

- A Predictive Control Method for Stabilizing a Manipulator-based UAV Landing Platform on Fluctuating Marine Surface 
*R. Xu, X. Ji, J. Hou, H. Liu and H. Qian; IEEE 2021; DOI: 10.1109/iros51168.2021.9636055*

  **想解决的问题**

  本文旨在解决在海洋环境下，受波浪扰动的无人艇（USV）上操作的机械臂如何稳定末端执行器，以协助无人机（UAV）安全、准确地着陆的问题。由于USV在波浪的作用下会产生高频、大幅度的随机运动（尤其是滚转和俯仰），这给机械臂的控制带来了挑战。传统的控制方法在这种情况下容易导致控制输出过高，无法满足关节速度和带宽的限制。作者希望开发一种能够在考虑关节约束和系统带宽的情况下，补偿USV受波浪影响产生的高频波动，从而稳定机械臂末端执行器的位置和姿态，提升无人机回收的成功率。

  **具体做法**

  *系统设计部分：*

  1. **三层次控制框架**

    - **高层控制器：在线轨迹生成器**
      - 基于修改的小波网络（Modified Wavelet Network，MWN）进行USV基座运动的实时预测，生成平滑的参考轨迹。
    - **中层控制器：模型预测控制器（MPC）**
      - 基于一阶延迟系统描述每个关节的运动学特性，考虑关节速度约束和系统带宽限制。
      - 利用MPC在关节速度层面进行控制，优化关节速度命令，使机械臂末端能够跟踪参考轨迹。
    - **低层控制器：独立关节速度控制器**
      - 对每个关节进行独立的速度控制，执行中层控制器给出的关节速度命令。

  2. **机械臂和USV模型**

    - **USV模型**
      - 主要关注USV的滚转（roll）和俯仰（pitch）运动，因为这些运动对机械臂末端的影响最大。
      - 忽略USV的横摇（heave）运动，并假设USV的航向（yaw）、纵向（surge）和横向（sway）运动可以主动控制或影响较小。
      - 引入一个中间坐标系 \( C_h \)，该坐标系与世界坐标系 \( C_w \) 平行，但跟随USV的平移和航向运动，只考虑滚转和俯仰的影响。

    - **机械臂模型**
      - 假设机械臂安装在USV上，受到USV基座扰动的影响。
      - 使用关节空间的动力学模型，并考虑到低层关节速度控制器只能实现关节速度的独立控制。
      - 将机械臂的关节动力学简化为一阶延迟系统：
        \[
        \frac{\dot{q}_i}{\dot{q}_{d_i}} = \frac{1}{1 + T_{m_i}s}
        \]
        其中，\( \dot{q}_i \) 为第 \( i \) 个关节的实际速度，\( \dot{q}_{d_i} \) 为期望速度，\( T_{m_i} \) 为关节的时间常数。

  *算法部分：*

  1. **修改的小波网络（MWN）用于USV运动预测**

    - **小波网络简介**
      - 小波网络是一种非线性回归方法，利用小波函数的时频局部化特性，对非线性和非平稳信号进行建模和预测。
      - 基本形式：
        \[
        y = \psi^T \Theta + e
        \]
        其中，\( \psi \) 是小波基函数的输出，\( \Theta \) 是权重向量，\( e \) 是噪声。

    - **MWN改进**
      - **减少锯齿和奇异性问题**
        - 在直接应用小波网络进行多步预测时，可能会出现锯齿和奇异性（预测值突然剧烈变化）的情况。
        - 通过在显著性评估过程中，优先选择与最新状态相关的基函数，减少锯齿现象。
        - 引入动态边界，限制预测输出的变化率，防止奇异性：
          \[
          y_{\text{upper}} = y(t) + \dot{y}(t) \Delta t + \frac{1}{2} \ddot{y}(t) (\Delta t)^2 + \frac{1}{6} y^{(3)}_{\text{max}} (\Delta t)^3
          \]
          \[
          y_{\text{lower}} = y(t) + \dot{y}(t) \Delta t + \frac{1}{2} \ddot{y}(t) (\Delta t)^2 - \frac{1}{6} y^{(3)}_{\text{max}} (\Delta t)^3
          \]
      - **改进正交分解算法**
        - 用Householder变换替代Gram-Schmidt算法，减少数值误差，提高计算稳定性和效率。

    - **MWN的在线训练和预测流程**
      - **数据准备：**
        - 使用滑动窗口提取USV过去 \( W \) 个时刻的运动数据 \( x(t - W + 1), \dots, x(t) \)。
      - **模型训练：**
        - 构建输入输出对，采用最小二乘法在线训练权重 \( \Theta \)，并通过显著性评估选择重要的小波基函数。
      - **多步预测：**
        - 利用训练好的MWN模型，预测未来 \( s \) 个时刻的USV滚转和俯仰角度。
        - 在预测过程中，应用动态边界约束，确保预测值的平滑性和合理性。

  2. **模型预测控制器（MPC）设计**

    - **控制模型建立：**
      - 考虑机械臂的关节速度受一阶延迟特性影响，建立离散状态空间模型：
        \[
        X(k+1) = A X(k) + B u(k)
        \]
        其中，\( X(k) \) 包含末端执行器的位置和速度，\( u(k) \) 为关节速度控制输入。

    - **预测模型的线性化处理：**
      - 由于雅可比矩阵 \( J(q) \) 随关节位置变化，为简化计算，假设在预测时域内雅可比矩阵保持不变（在每个控制时刻更新）。
      - 将末端执行器的运动预测与关节速度控制联系起来，构建预测模型。

    - **优化目标和约束条件：**
      - **目标函数：**
        - 最小化末端执行器在预测时域内的轨迹跟踪误差和控制增量：
          \[
          \min_{\Delta u} \sum_{k=0}^{N_p} \| X(k|t) - X_d(k) \|_Q^2 + \sum_{k=0}^{N_c} \| \Delta u(k|t) \|_R^2
          \]
        - \( X_d(k) \) 为参考轨迹，由MWN预测的USV运动生成，结合期望的末端执行器姿态。
      - **约束条件：**
        - 关节速度和速度增量的约束：
          \[
          u_{\min} \leq u(k|t) \leq u_{\max}
          \]
          \[
          \Delta u_{\min} \leq \Delta u(k|t) \leq \Delta u_{\max}
          \]
        - 末端执行器工作空间约束，确保在机械臂的灵活工作空间内：
          \[
          X_{\min} \leq X(k|t) \leq X_{\max}
          \]
      - **求解方法：**
        - 将优化问题转化为二次规划（QP）问题，利用快速QP求解器在实际控制循环中实时求解。

  3. **轨迹生成和控制流程**

    - **参考轨迹生成：**
      - 根据MWN预测的USV滚转和俯仰角度，计算末端执行器在基座坐标系下的期望轨迹 \( x_d \)：
        \[
        x_d(k) = R(\hat{\alpha}(t+k), \hat{\beta}(t+k)) x_{\text{desired}}
        \]
        其中，\( R \) 为由预测的滚转 \( \hat{\alpha} \) 和俯仰 \( \hat{\beta} \) 角度组成的旋转矩阵，\( x_{\text{desired}} \) 为在理想情况下末端执行器的期望位置和姿态。
    - **控制器执行流程：**
      - **高层控制器：** 使用MWN进行USV运动预测，生成参考轨迹。
      - **中层控制器：** 利用MPC根据参考轨迹计算关节速度命令，考虑关节速度和增量约束。
      - **低层控制器：** 执行关节速度命令，控制机械臂的实际运动。

  **效果**

  - **仿真实验：**
    - 使用从真实USV收集的海上运动数据，对MWN预测的精度和轨迹的平滑性进行了验证。
    - MWN在10步预测（1秒）内的均方误差（MSE）小于1.6度，且在四小时的海洋环境数据上平均计算时间小于0.03秒，满足实时性要求。
    - 在仿真实验中，与传统的逆运动学（IK）控制器相比，所提方法在较高海况（3级海况）下，末端执行器的位置误差降低了42%，姿态误差降低了50%。

  - **实验验证：**
    - 在室内搭建了一个模拟USV基座扰动的实验平台，通过旋转平台模拟不同频率（0.2 Hz、0.5 Hz、1 Hz）的基座扰动。
    - 实验结果显示，在1 Hz的高频扰动下，所提方法相比IK控制器，末端执行器的位置误差降低了约30%，姿态误差降低了约58%。
    - 证明了所提方法在高频基座扰动下，能够有效地稳定机械臂末端，满足无人机着陆的要求。

  **关键词**

  - 修改的小波网络（MWN）, 模型预测控制（MPC）, 机械臂末端稳定控制, 受扰动基座上的机械臂, 无人机（UAV）着陆辅助, 轨迹生成与平滑, 海洋环境机器人, 关节速度约束, 系统带宽限制, 实时运动预测

---

- Confidence-Aware Object Capture for a Manipulator Subject to Floating-Base Disturbances 
*R. Xu, Z. Jiang, B. Liu, Y. Wang and H. Qian; IEEE Transactions on Robotics 2024 Vol. 40 Pages 4396-4413; DOI: 10.1109/tro.2024.3463476*

  **想解决的问题**

  本论文针对在波浪扰动下，无人艇（USV）上的机械臂捕获空中静止物体的挑战。由于波浪引起的基座准周期且快速的运动，导致物体运动预测精度较低。此外，机械臂受限的主动力矩使得通过实时追踪来准确捕获目标变得困难。传统的模型预测控制方法要求高精度的运动预测和足够的执行器力矩，但在随机的基座运动下，这些条件难以满足。作者希望开发一种在预测不精确的情况下，仍能规划可行的捕获轨迹的方法，以提高在浮动基座扰动下机械臂捕获物体的成功率。

  **具体做法**

  *算法部分：*

  1. **运动预测与置信度评估**

    - **波列网络（Wavelet Network, WN）预测：** 作者使用实时训练的波列网络来预测物体在基座坐标系下的运动轨迹。考虑到基座运动的非线性和不确定性，波列网络通过选取一组具有时频局部化特性的波列函数，实时回归运动模型。每个波列函数根据尺度和位移参数进行调整，能够有效捕捉波浪扰动下的瞬时变化。

    - **显著性项选择优化：** 为了提高计算效率，作者改进了波列网络中的显著性项选择过程。他们通过在正交分解过程中计算误差减少率（ERR），筛选出对预测贡献最大的波列函数，减少了不必要的计算。

    - **置信度分析：** 由于预测精度无法一直保持高水平，作者采用贝叶斯方法对预测结果进行置信度评估。将预测误差划分为不同的等级，根据观测到的误差等级，迭代更新预测的置信度。通过这种方法，得到一个多步预测的置信区间（置信管道），用于评估未来时刻的预测精度。

  2. **置信度感知的运动规划**

    - **捕获位置选择：** 考虑到预测精度随着预测步数的增加而降低，且机械臂需要一定的时间才能到达目标位置，作者提出了一个优化问题，以在捕获时刻 \( t_c \) 选择最佳的捕获位置。目标是最大化捕获位置的置信度，同时确保机械臂能够在给定时间内到达该位置。这个优化问题包括系统模型、任务空间误差和状态约束。

    - **运动轨迹规划：** 为了提高计算效率，作者将捕获位置和运动轨迹的规划问题分解为两个子问题：

      - **捕获位置优化：** 仅考虑捕获位置的可达性和置信度，建立一个非线性优化问题，决策变量为捕获时刻 \( t_c \) 和末端关节位置 \( q_N \)。通过约束关节位移不超过在 \( t_c \) 时间内的最大可移动距离，确保机械臂能够到达捕获位置。

      - **关节空间轨迹优化：** 在确定捕获位置后，规划机械臂从当前位置到捕获位置的关节空间轨迹。目标是最小化轨迹跟踪误差和控制输入，满足关节位置、速度、加速度等约束。这个问题被重新表述为一个二次规划（QP）问题，可以高效地求解。

    - **初始化方法：** 为了减少捕获所需的时间并提高成功率，作者提出了一种初始化位置选择方法。通过观测物体在基座坐标系下的运动，估计其运动区域，并在一个安全边界上选择一个初始化位置，使机械臂先移动到靠近物体的位置，缩短捕获时间。

  *系统（设计）部分：*

  - **实验平台：** 作者使用了一个冗余机械臂，末端配备了电磁铁，能够在接触物体时立即捕获。机械臂安装在伺服旋转平台上，以模拟浮动基座的扰动。

  - **视觉反馈系统：** 利用运动捕捉系统实时获取物体和基座的位姿信息，反馈频率为200 Hz，确保了高精度的定位。

  - **控制系统：** 控制系统基于ROS架构，实现了运动预测、置信度评估和运动规划等功能模块。机械臂在关节位置层面进行控制，控制频率为1 kHz，确保了控制的实时性。

  **效果**

  - **实验验证：** 作者通过超过150次实验，验证了所提方法的有效性。

    - **成功率：** 在基座执行真实无人艇运动（包括单轴和双轴的正弦扰动以及基于实际船只数据的不规则扰动）的情况下，所提方法实现了80%的捕获成功率。

    - **捕获精度提升：** 与传统方法相比，所提方法的平均捕获误差降低了25%以上。在不规则扰动下，捕获精度提高更为显著。

    - **算法效率：** 通过将捕获位置和轨迹规划问题分解，计算时间显著减少，所有计算在0.2秒内完成，满足了实时性的要求。

    - **鲁棒性：** 通过置信度评估和初始化方法，提升了在预测不准确情况下的捕获可靠性，证明了方法在复杂海洋环境下的适用性。

  **关键词**

  - 置信度分析, 波列网络（Wavelet Network）, 运动规划, 浮动基座机械臂, 物体捕获, 贝叶斯方法, 实时控制, 无人艇（USV）, 自动化系统, 不确定性处理

<!-- ---

- Confidence-Aware Object Capture for a Manipulator Subject to Floating-Base Disturbances 
*R. Xu, Z. Jiang, B. Liu, Y. Wang and H. Qian; IEEE Transactions on Robotics 2024 Vol. 40 Pages 4396-4413; DOI: 10.1109/tro.2024.3463476* -->


## 3.3 Vision Language Model - 视觉-语言模型 <a id="Vision-Language-Model"></a>


## 3.4 Vision Language Action Model - 视觉-语言-动作模型 <a id="Vision-Language-Action"></a>


## 3.5 Dual System - 双系统 <a id="Dual-System"></a>



# 4. Paper List Links - 论文列表链接 <a id="paper-list-link"></a>
- [Awesome-LLM-Robotics: A repo contains a curative list of papers using Large Language/Multi-Modal Models for Robotics/RL](https://github.com/GT-RIPL/Awesome-LLM-Robotics)
- [SOTA Paper Rating - Weiyang Jin](https://waynejin0918.github.io/SOTA-paper-rating.io/)
- [Paper List For EmbodiedAI - Tianxing Chen](https://github.com/TianxingChen/Paper-List-For-EmbodiedAI)
- [Paper List - Yanjie Ze](https://github.com/YanjieZe/Paper-List)



# 5. Acknowledgement - 致谢 <a id="acknowledgement"></a>
>文中部分内容可能包括我们有access权限但是不对公众开放的内容（比如部分论文的PDF），仅做学术分享，如有侵权，请您第一时间联系我们删除。请勿将本仓库中的任何内容用作商业目的。如有相应部分因我们疏忽（比如引用了相关的内容但是忘记标明出处），请麻烦联系我们，我们会第一时间进行update。

本文转载/引用了一下一些团体/个人的内容，我们对他们的贡献表示感谢，以下是引用列表：

[1] Course Materials from CUHK, Shenzhen [Introduction to Robotics](https://github.com/yimouwu/Robotics-and-Embodied-AI-Review/tree/main/Awesome%20Course%20Materials/Introduction%20to%20Robotics)，[2] Feishu Docs [Xbot具身知识库](https://yv6uc1awtjc.feishu.cn/wiki/WPTzw9ON0ivIVrkLjVocNZh8nLf?from=from_copylink)，[3] Github repo [Embodied-AI-Guide](https://github.com/TianxingChen/Embodied-AI-Guide)，[4] Github repo [Awesome-Embodied-AI](https://github.com/yunlongdong/Awesome-Embodied-AI)

####
# About us - 关于我们
###### "己欲立而立人，己欲达而达人"
我们是一个由机器人与具身初学者组成的团队, 希望能够通过我们自己的学习、科研经验, 为志同道合的朋友提供一些帮助。欢迎更多朋友加入我们的项目, 也很欢迎交友、学术合作, 有任何问题, 可以联系邮箱`yimouwu0@gmail.com`。

<p><b>🎠Contributors</b>: <a href="https://yimouwu.github.io/">吴贻谋 (25'港中文MPhil)</a> 
</p> 

<a href="https://github.com/yimouwu/Robotics-and-Embodied-AI-Review/contributors">
  <img src="https://contrib.rocks/image?repo=yimouwu/Robotics-and-Embodied-AI-Review" />
</a>

#####
> 关于本仓库的知识讨论，或者任何其他问题,欢迎联系吴贻谋（25'fall CUHK 医学院外科系 MPhil，方向为机器人（医疗）与具身智能）微信：yimouwu777 或者 邮箱：yimouwu0@gmail.com

# 👍 Citation <a id="citation"></a>

如果本仓库对你的研究或学习有所帮助，请引用：
```bibtex
@misc{roboticsandembodiedaireview2025,
  title     = {Robotics-and-Embodied-AI-Review},
  author    = {Robotics-and-Embodied-AI-Review-Contributors},
  month     = {June},
  year      = {2025},
  url       = {https://github.com/yimouwu/Robotics-and-Embodied-AI-Review},
}
```


# 🏷️ License <a id="license"></a>

This repository is released under the MIT license. See [LICENSE](./LICENSE) for additional details.



# ⭐️ Star History <a id="star-history"></a>

## Star History
[![Star History Chart](https://api.star-history.com/svg?repos=yimouwu/Robotics-and-Embodied-AI-Review&type=Date)](https://www.star-history.com/#yimouwu/Robotics-and-Embodied-AI-Review&Date)




<!-- ---

## **3. 机器学习与强化学习 (Machine Learning and Reinforcement Learning)**

### **中文**
**机器学习**是通过数据训练模型以完成任务的技术，而**强化学习**是一种特殊的机器学习方法，旨在通过试错学习找到最优策略，以最大化长期奖励。

- **机器学习**：
  - 分类：监督学习、无监督学习、半监督学习。
  - 常用模型：支持向量机、决策树、神经网络。
  - 应用：目标检测、语音控制、路径规划。
- **强化学习**：
  - 使用**奖励信号**进行学习。
  - 框架：基于 MDP，策略优化（如 Q-learning 和深度强化学习）。
  - 应用：机器人控制、自动驾驶、游戏 AI。

### **English**
**Machine Learning** involves training models using data to perform tasks, while **Reinforcement Learning** is a special branch of machine learning that focuses on finding optimal policies through trial and error to maximize long-term rewards.

- **Machine Learning**:
  - Categories: Supervised, unsupervised, and semi-supervised learning.
  - Common models: SVMs, decision trees, neural networks.
  - Applications: Object detection, voice control, path planning.
- **Reinforcement Learning**:
  - Learns through **reward signals**.
  - Framework: Based on MDP, policy optimization (e.g., Q-learning and deep RL).
  - Applications: Robot control, autonomous driving, game AI.

---

## **4. 动力学与控制 (Dynamics and Control)**

### **中文**
机器人学中的**动力学与控制**研究如何在物理环境中描述和控制机器人运动。它是实现精确操作和稳定行为的核心。

- **动力学**：
  - 使用牛顿力学或拉格朗日力学描述机器人运动。
  - 包括刚体动力学、关节运动学。
- **控制方法**：
  - PID 控制：经典的比例-积分-微分控制。
  - Model Predictive Control (MPC)：前瞻性优化控制方法。
- **应用**：
  - 机械臂轨迹控制。
  - 轮式机器人运动控制。

### **English**
**Dynamics and Control** in robotics focus on describing and controlling robot motion in physical environments. It is essential for achieving precise operations and stable behaviors.

- **Dynamics**:
  - Describes robot motion using Newtonian or Lagrangian mechanics.
  - Includes rigid body dynamics and joint kinematics.
- **Control Techniques**:
  - PID Control: Classical proportional-integral-derivative control.
  - Model Predictive Control (MPC): A forward-looking optimization method.
- **Applications**:
  - Trajectory control of robotic arms.
  - Motion control of wheeled robots.

---

## **5. SLAM（同步定位与建图）**

### **中文**
**同步定位与建图 (SLAM)** 是机器人在未知环境中构建地图并同时确定自身位置的关键技术。

- **核心问题**：
  - 机器人如何同时**构建地图**和**定位自身**？
- **常见方法**：
  - 激光雷达 SLAM（如 Gmapping、Cartographer）。
  - 视觉 SLAM（如 ORB-SLAM、RTAB-Map）。
- **应用**：
  - 无人驾驶。
  - 室内导航。

### **English**
**Simultaneous Localization and Mapping (SLAM)** is a key technique that enables robots to construct a map of an unknown environment while simultaneously determining their own position.

- **Core Problem**:
  - How can the robot **build a map** and **locate itself** at the same time?
- **Common Methods**:
  - LiDAR-based SLAM (e.g., Gmapping, Cartographer).
  - Vision-based SLAM (e.g., ORB-SLAM, RTAB-Map).
- **Applications**:
  - Autonomous driving.
  - Indoor navigation.

---

## **6. 具身智能中的认知与交互**

### **中文**
具身智能不仅关注机器人的物理行为，还强调与环境和人类的交互能力，包括感知、学习、决策和语言理解。

- **感知**：通过传感器（如相机、激光雷达）感知环境。
- **交互**：实现自然语言处理、手势识别等。
- **学习**：通过深度学习或强化学习改进行为。

### **English**
Embodied intelligence focuses not only on the robot's physical actions but also on its ability to interact with the environment and humans, including perception, learning, decision-making, and language understanding.

- **Perception**: Using sensors (e.g., cameras, LiDAR) to perceive the environment.
- **Interaction**: Achieving natural language processing, gesture recognition, etc.
- **Learning**: Improving behavior through deep learning or reinforcement learning.

---

### **总结 (Summary)**

机器人学和具身智能的基础知识可以分为以下关键领域（Key Areas）：

1. **马尔可夫过程 (Markov Process)**：描述随机系统的演化。
2. **卡尔曼滤波 (Kalman Filter)**：优化动态系统状态估计。
3. **机器学习与强化学习 (Machine Learning & RL)**：实现智能控制与决策。
4. **动力学与控制 (Dynamics & Control)**：描述和控制机器人运动。
5. **SLAM**：同步定位与建图。
6. **认知与交互 (Cognition & Interaction)**：机器人与环境、人类的智能交互。

这些知识构成了机器人学与具身智能的理论和技术基础，无论是用于研究还是工程应用，都十分重要。 -->