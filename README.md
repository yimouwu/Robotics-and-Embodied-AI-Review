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

###### - [具身知识库](https://yv6uc1awtjc.feishu.cn/wiki/WPTzw9ON0ivIVrkLjVocNZh8nLf?from=from_copylink) - 具身智能知识库
###### - [Embodied-AI-Guide](https://github.com/tianxingchen/Embodied-AI-Guide) - 具身智能系统性学习指南
###### - [Awesome-Embodied-AI](https://github.com/yunlongdong/Awesome-Embodied-AI) - 具身经典开源项目
###### - [具身智能招贤榜](https://github.com/StarCycle/Awesome-Embodied-AI-Job) - 业界学界招聘信息
<!-- ###### - [Writing AI Conference Papers: A Handbook for Beginners](https://github.com/hzwer/WritingAIPaper) - AI方向如何写论文
###### - [Hyperparameter-Optimization-of-Machine-Learning-Algorithms](https://github.com/LiYangHart/Hyperparameter-Optimization-of-Machine-Learning-Algorithms) - 机器学习算法的超参数优化 -->




# 1. Research Areas Guide - 研究领域入门指南 <a id="research-areas-guide"></a>


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
(Coming Soon...)  

### 1.1.4 Inverse Kinematics - 逆向运动学 <a id="Inverse-Kinematics"></a>
(Coming Soon...)  

### 1.1.5 Velocity Kinematics - 速度运动学 <a id="Velocity-Kinematics"></a>
(Coming Soon...)  



## 1.2 Control - 控制 <a id="Control"></a>

### 1.2.1 Concepts - 概念与术语 <a id="Control-Concepts"></a>
(Coming Soon...)  

### 1.2.2 Control System - 控制系统 <a id="Control-System"></a>
(Coming Soon...)  

### 1.2.3 Controller - 控制器 <a id="Controller"></a>

#### 1.2.3.1 LQR Controller - LQR 控制器 <a id="LQR"></a>
(Coming Soon...)  

#### 1.2.3.2 P.I.D. Controller - P.I.D. 控制器 <a id="PID"></a>
(Coming Soon...)  



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
- Dijkstra’s method
  - From the starting point, search every adjacent point in each new step until reaching the goal, then find the shortest path among all the goal-reachable solutions




### 1.3.3 Sampling-Based Methods - 基于采样的方法 <a id="Sampling-Based-Methods"></a>
(Coming Soon...)  



### 1.3.4 Geometry-Based Methods - 基于几何学的方法 <a id="Geometry-Based-Methods"></a>
(Coming Soon...)  



### 1.3.5 Optimization-Based Methods - 基于最优化的方法 <a id="Optimization-Based-Methods"></a>
(Coming Soon...)  

#### 1.3.5.1 Model Predictive Control - 模型预测控制 <a id="Model-Predictive-Control"></a>
(Coming Soon...)  

##### 1.3.5.1.1 Markovian Decision Process - 马尔可夫决策过程 <a id="Markovian-Decision-Process"></a>
(Coming Soon...)  




## 1.4 Perception - 感知 <a id="Perception"></a>

### 1.4.1 Kalman Filter - 卡尔曼滤波器 <a id="Kalman-Filter"></a>

### Introduction

The **Kalman Filter** is a mathematical algorithm that provides an efficient computational solution to estimate the state of a dynamic system from a series of incomplete and noisy measurements. It is widely used in control systems, navigation, signal processing, and econometrics due to its ability to extract useful information from noisy data. 卡尔曼滤波是一种数学算法，它提供了一种有效的计算解决方案，从一系列不完整和有噪声的测量中估计动态系统的状态。由于它能够从噪声数据中提取有用的信息，因此被广泛应用于控制系统、导航、信号处理和计量经济学中。


### 1.4.1.1. What is the Kalman Filter?

#### 1.4.1.1.1. Overview

The Kalman Filter is a recursive estimator that estimates the state of a discrete-time controlled process governed by a linear stochastic difference equation. It operates in a two-step process: 卡尔曼滤波器是一种递归估计器，用于估计由线性随机差分方程控制的离散时间控制过程的状态。它分为两步：

1. **Prediction Step:** The filter produces estimates of the current state variables, along with their uncertainties.   **预测步骤：** 过滤器产生当前状态变量的估计，以及它们的不确定性。
2. **Update Step (Correction):** Once a new measurement is observed, these predictions are updated using a weighted average, with more weight given to estimates with higher certainty.   **更新步骤（修正）：** 一旦观察到新的测量结果，这些预测将使用加权平均值进行更新，并将更多的权重赋予具有更高确定性的估计。

#### 1.4.1.1.2. Mathematical Foundations

The Kalman Filter assumes the following: 卡尔曼滤波器假设如下

- The system is **linear**. 该系统是线性的。
- The system dynamics and measurement equations are known. 系统动力学和测量方程是已知的。
- The process noise and measurement noise are both **Gaussian**, with zero mean and known covariance. 过程噪声和测量噪声均为**高斯噪声**，均值为零，协方差已知。

**State-Space Representation 状态空间表示:** 

The system can be represented in state-space form:

1. **State Equation (Process Model):**
   \[
   \mathbf{x}_{k} = \mathbf{A}_{k}\mathbf{x}_{k-1} + \mathbf{B}_{k}\mathbf{u}_{k} + \mathbf{w}_{k}
   \]

2. **Measurement Equation:**
   \[
   \mathbf{z}_{k} = \mathbf{H}_{k}\mathbf{x}_{k} + \mathbf{v}_{k}
   \]

**Where:**

- \(\mathbf{x}_{k}\): State vector at time \(k\).
- \(\mathbf{A}_{k}\): State transition matrix.
- \(\mathbf{B}_{k}\): Control input matrix.
- \(\mathbf{u}_{k}\): Control input vector.
- \(\mathbf{w}_{k}\): Process noise (assumed to be Gaussian with covariance \(\mathbf{Q}_{k}\)).
- \(\mathbf{z}_{k}\): Measurement vector at time \(k\).
- \(\mathbf{H}_{k}\): Measurement matrix.
- \(\mathbf{v}_{k}\): Measurement noise (assumed to be Gaussian with covariance \(\mathbf{R}_{k}\)).


### 1.4.1.2. Variants of the Kalman Filter

Due to limitations in the basic Kalman Filter (e.g., linearity assumptions), several variants have been developed to handle nonlinear systems, improve numerical stability, and address specific application requirements.

#### 1.4.1.2.1. Extended Kalman Filter (EKF)

##### 1.4.1.2.1.1. Overview

The EKF linearizes the nonlinear system around the current estimate using Taylor series expansion. It approximates the system dynamics and measurement equations to first-order terms.

##### 1.4.1.2.1.2. Mathematical Formulation

For a system described by nonlinear functions:

- **Process Model:**
  \[
  \mathbf{x}_{k} = f(\mathbf{x}_{k-1}, \mathbf{u}_{k}) + \mathbf{w}_{k}
  \]

- **Measurement Model:**
  \[
  \mathbf{z}_{k} = h(\mathbf{x}_{k}) + \mathbf{v}_{k}
  \]

The EKF uses Jacobian matrices to linearize \(f\) and \(h\):

- **State Transition Jacobian:**
  \[
  \mathbf{F}_{k} = \left. \frac{\partial f}{\partial \mathbf{x}} \right|_{\hat{\mathbf{x}}_{k-1}}
  \]

- **Measurement Jacobian:**
  \[
  \mathbf{H}_{k} = \left. \frac{\partial h}{\partial \mathbf{x}} \right|_{\hat{\mathbf{x}}_{k}}
  \]

##### 1.4.1.2.1.3. Applications

- **Navigation Systems:** Aerospace and marine navigation where the motion dynamics are nonlinear.
- **Robotics:** Mobile robot localization and mapping (SLAM).
- **Tracking Systems:** Radar and sonar tracking of maneuvering targets.

#### 1.4.1.2.2. Unscented Kalman Filter (UKF)

##### 1.4.1.2.2.1. Overview

The UKF addresses the inaccuracies arising from linearization in the EKF by using deterministic sampling (sigma points) to capture the mean and covariance estimates more accurately.

##### 1.4.1.2.2.2. Sigma Points

The UKF generates a set of sigma points that are propagated through the nonlinear functions:

- Captures up to the second-order statistics of the Gaussian distribution.
- Provides better approximations for nonlinear transformations.

##### 1.4.1.2.2.3. Applications

- **Nonlinear Control Systems:** Where higher accuracy is needed over the EKF.
- **sensor fusion:** Combining data from multiple sensors with nonlinear measurements.
- **Autonomous Vehicles:** State estimation in complex dynamic environments.

#### 1.4.1.2.3. Error-State Kalman Filter (ESKF)

##### 1.4.1.2.3.1. Overview

The ESKF estimates the error between the estimated state and the true state, rather than estimating the state directly. This is particularly useful for systems where the state variables exhibit slow changes or when initial estimates are available.

##### 1.4.1.2.3.2. Advantages

- **Numerical Stability:** By focusing on small errors, numerical issues due to large state values are minimized.
- **Simplified Linearization:** The error dynamics are often more linear than the state dynamics, simplifying the computation.

##### 1.4.1.2.3.3. Applications

- **Inertial Navigation Systems (INS):** Where small errors in position, velocity, and orientation need to be accurately estimated.
- **Robotics:** Precise localization and mapping, especially in SLAM applications.
- **Aerospace:** Attitude estimation for aircraft and satellites.

#### 1.4.1.2.4. Square Root Kalman Filter (SRKF)

##### 1.4.1.2.4.1. Overview

The SRKF maintains the square root of the covariance matrix to improve numerical stability.

##### 1.4.1.2.4.2. Advantages

- **Numerical Stability:** Avoids direct computation of the covariance matrix, reducing round-off errors.
- **Positive Definiteness:** Ensures the covariance matrix remains positive definite.

##### 1.4.1.2.4.3. Applications

- **High-Precision Systems:** Where numerical errors can accumulate over time.
- **Large-Scale Systems:** With significant computational demands.

#### 1.4.1.2.5. Information Filter (Inverse Covariance Filter)

##### 1.4.1.2.5.1. Overview

The Information Filter operates on the information matrix (inverse of the covariance matrix) and information vector.

##### 1.4.1.2.5.2. Advantages

- **Sparsity Exploitation:** Efficient for systems where the information matrix is sparse.
- **Distributed Estimation:** Facilitates decentralized estimation in networked systems.

##### 1.4.1.2.5.3. Applications

- **Sensor Networks:** Distributed state estimation.
- **Multi-Robot Systems:** Where robots share information to estimate a common state.

#### 1.4.1.2.6. Ensemble Kalman Filter (EnKF)

##### 1.4.1.2.6.1. Overview

The EnKF uses a Monte Carlo approach with an ensemble of random samples to estimate the state distribution.

##### 1.4.1.2.6.2. Applications

- **Meteorology:** Weather prediction and climate modeling.
- **Oceanography:** Estimating ocean states from sparse measurements.

#### 1.4.1.2.7. Particle Filter (Sequential Monte Carlo Methods)

Although not a Kalman filter, particle filters are similar recursive Bayesian estimators suitable for highly nonlinear and non-Gaussian systems.



### 1.4.1.3. Applications of Different Kalman Filter Variants

#### 1.4.1.3.1. Linear Kalman Filter

- **Finance:** Estimating market trends and filtering economic indicators.
- **Signal Processing:** Noise reduction in signals, system identification.
- **Control Systems:** Classical control applications with linear dynamics.

#### 1.4.1.3.2. Extended Kalman Filter (EKF)

- **GPS Navigation:** Position and velocity estimation.
- **Robotics:** Odometry and sensor fusion for mobile robots.
- **Biomedical Engineering:** Heart rate estimation from noisy measurements.

#### 1.4.1.3.3. Unscented Kalman Filter (UKF)

- **Aerospace Engineering:** Attitude and orbit determination for spacecraft.
- **Automotive Applications:** Vehicle tracking and advanced driver-assistance systems (ADAS).
- **Nonlinear System Identification:** Estimating parameters in complex models.

#### 1.4.1.3.4. Error-State Kalman Filter (ESKF)

- **Inertial Measurement Unit (IMU) Integration:** Correcting drift errors in accelerometers and gyroscopes.
- **Mobile Robotics:** High-precision localization in GPS-denied environments.
- **Virtual Reality (VR):** Head and motion tracking for immersive experiences.

#### 1.4.1.3.5. Square Root Kalman Filter (SRKF)

- **High-Precision Navigation:** Submarine and missile guidance systems.
- **Space Missions:** Deep space navigation where precision is critical.

#### 1.4.1.3.6. Information Filter

- **Decentralized Estimation:** Collaborative tracking in sensor networks.
- **Multisensor Data Fusion:** Integrating measurements from distributed sensors.

#### 1.4.1.3.7. Ensemble Kalman Filter (EnKF)

- **Geosciences:** Assimilating data from various sources for environmental modeling.
- **Hydrology:** Estimating water flow and levels in river basins.


### 1.4.1.4. Choosing the Appropriate Kalman Filter Variant

#### 1.4.1.4.1. System Linearity

- **Linear Systems:** Use the standard Kalman Filter.
- **Mildly Nonlinear Systems:** EKF may suffice, but be cautious of linearization errors.
- **Highly Nonlinear Systems:** UKF or particle filters are more appropriate.

#### 1.4.1.4.2. Computational Resources

- **Limited Resources:** EKF is less computationally intensive than UKF.
- **High Accuracy Needed:** UKF provides better estimates at the expense of computation.

#### 1.4.1.4.3. Noise Characteristics

- **Gaussian Noise:** Standard KF, EKF, UKF assume Gaussian noise.
- **Non-Gaussian Noise:** Particle filters or other nonlinear estimators are preferable.

#### 1.4.1.4.4. Application Requirements

- **Precision vs. Speed:** SRKF is preferred for precision, while standard KF is faster.
- **Distributed Systems:** Information Filters are suitable for decentralized estimation.



### 1.4.1.5. Kalman Filter Algorithm Steps

#### 1.4.1.5.1. Standard Kalman Filter Steps

1. **Initialization:**
   - Set initial state estimate \(\hat{\mathbf{x}}_{0}\) and covariance \(\mathbf{P}_{0}\).

2. **Prediction Step:**
   - Predict the next state:
     \[
     \hat{\mathbf{x}}_{k|k-1} = \mathbf{A}_{k}\hat{\mathbf{x}}_{k-1|k-1} + \mathbf{B}_{k}\mathbf{u}_{k}
     \]
   - Predict the covariance:
     \[
     \mathbf{P}_{k|k-1} = \mathbf{A}_{k}\mathbf{P}_{k-1|k-1}\mathbf{A}_{k}^{T} + \mathbf{Q}_{k}
     \]

3. **Update Step:**
   - Compute the Kalman Gain:
     \[
     \mathbf{K}_{k} = \mathbf{P}_{k|k-1}\mathbf{H}_{k}^{T}(\mathbf{H}_{k}\mathbf{P}_{k|k-1}\mathbf{H}_{k}^{T} + \mathbf{R}_{k})^{-1}
     \]
   - Update the estimate with measurement \(\mathbf{z}_{k}\):
     \[
     \hat{\mathbf{x}}_{k|k} = \hat{\mathbf{x}}_{k|k-1} + \mathbf{K}_{k}(\mathbf{z}_{k} - \mathbf{H}_{k}\hat{\mathbf{x}}_{k|k-1})
     \]
   - Update the covariance:
     \[
     \mathbf{P}_{k|k} = (\mathbf{I} - \mathbf{K}_{k}\mathbf{H}_{k})\mathbf{P}_{k|k-1}
     \]

#### 1.4.1.5.2. EKF and UKF Adaptations

- **EKF:** Incorporate Jacobians in prediction and update steps.
- **UKF:** Use sigma points to approximate the distributions.



### 1.4.1.6. Practical Considerations

#### 1.4.1.6.1. Tuning the Filter

- **Process Noise Covariance (\(\mathbf{Q}\)):** Adjust to reflect how much uncertainty is in the model.
- **Measurement Noise Covariance (\(\mathbf{R}\)):** Set based on the accuracy of the sensors.

#### 1.4.1.6.2. Initialization

- **State Estimate:** Should be as close as possible to the true initial state.
- **Covariance Matrix:** Reflect the confidence in the initial estimate.

#### 1.4.1.6.3. Numerical Stability

- **Covariance Matrix Symmetry:** Ensure that \(\mathbf{P}\) remains symmetric and positive semi-definite.
- **Avoiding Divergence:** Monitor innovations (measurement residuals) to detect divergence.



As the conclusion, the Kalman Filter and its variants are powerful tools for state estimation in various systems, especially when dealing with uncertainties and noise. By selecting the appropriate variant based on the system's characteristics and application requirements, one can achieve robust and accurate estimation results.

Understanding the mathematical foundations, assumptions, and limitations of each filter variant is crucial for successful implementation. Continuous advancements in filter design and computation methods are expanding their applicability to increasingly complex and nonlinear systems.





### 1.4.2 Computer Vision - 计算机视觉 <a id="Scene-Understanding"></a>

#### 1.4.2.1 2D Vision - 二维视觉 <a id="2D-Vision"></a>
(Coming Soon...)  

#### 1.4.2.2 3D Vision - 三维视觉 <a id="3D-Vision"></a>
(Coming Soon...)  

#### 1.4.2.3 4D Vision - 四维视觉 <a id="4D-Vision"></a>
(Coming Soon...)  

#### 1.4.2.4 Subdivision of Application Domains - 应用领域细分 <a id="Subdivision-of-application-domains"></a>

##### 1.4.2.4.1 Visual Prompting - 视觉提示 <a id="Visual-Prompting"></a>
(Coming Soon...)  

##### 1.4.2.4.2 Affordance Grounding - 可供性锚定 <a id="Affordance-Grounding"></a>

###### 1.4.2.4.2.1 2D - 二维 <a id="Two-Dimension"></a>
(Coming Soon...)  

###### 1.4.2.4.2.2 3D - 三维 <a id="Three-Dimension"></a>
(Coming Soon...)  



### 1.4.2 Scene Understanding - 场景理解 <a id="Scene-Understanding"></a>

#### 1.4.2.1 Segmentation - 图像分割 <a id="Segmentation"></a>
(Coming Soon...)  



## 1.5 Learning - 学习 <a id="Learning"></a>

### 1.5.1 Intro to Machine Learning - 机器学习入门 <a id="Intro-to-Machine-Learning"></a>
(Coming Soon...)  

### 1.5.2 Reinforcement Learning - 强化学习 <a id="Reinforcement-Learning"></a>
(Coming Soon...)  

### 1.5.3 Imitation Learning - 模仿学习 <a id="Imitation-Learning"></a>
(Coming Soon...)  



## 1.6 Multi-Robot Systems - 多机器人系统 <a id="Multi-Robot-Systems"></a>
(Coming Soon...)  



## 1.7 Simulation and Modeling - 仿真与建模 <a id="Simulation-and-Modeling"></a>
(Coming Soon...)  



## 1.8 Physical Interaction - 物理交互 <a id="Physical-Interaction"></a>
(Coming Soon...)  



## 1.9 Ethics and Social Implications - 伦理与社会问题 <a id="Ethics-and-Social-Implications"></a>
(Coming Soon...)  



# 2. Tools - 工具 <a id="tools"></a>

## 2.1 Software - 软件 <a id="software"></a>

### 2.1.1 General Tools - 常用工具 <a id="General-Tools"></a>
(Coming Soon...)  

### 2.1.2 Simulators - 仿真器 <a id="simulators"></a>
(Coming Soon...)  

### 2.1.3 Robot Description - 机器人描述格式 <a id="Robot-Description"></a>
(Coming Soon...)  



## 2.2 Hardware - 硬件 <a id="hardware"></a>
(Coming Soon...)  



# 3. Literature Review - 文献综述 <a id="literature-review"></a>

## 3.1 Traditional Control - 传统控制 <a id="Traditional-Control"></a>

- A manipulator-assisted multiple UAV landing system for USV subject to disturbance 
*R. Xu, C. Liu, Z. Cao, Y. Wang and H. Qian; Ocean Engineering 2024 Vol. 299 Pages 117306; DOI: 10.1016/j.oceaneng.2024.117306*

## 3.2 Model Predictive Control - 模型预测控制 <a id="Model-Predictive-Control"></a>


- Confidence-Aware Object Capture for a Manipulator Subject to Floating-Base Disturbances 
*R. Xu, Z. Jiang, B. Liu, Y. Wang and H. Qian; IEEE Transactions on Robotics 2024 Vol. 40 Pages 4396-4413; DOI: 10.1109/tro.2024.3463476*

  **想解决的问题**

  本论文旨在解决在波浪扰动下，无人艇（USV）上的机械臂捕获空中静止目标（如无人机）的问题。由于波浪引起的基座运动是准周期且快速的，导致目标运动预测精度低，以及机械臂受限的主动力矩使得实时追踪和捕获目标变得困难。传统的方法依赖于准确的运动预测和足够的执行器力矩，然而这些条件在实际中很难满足。

  **具体做法**

  *算法部分：*

  1. **运动预测与置信度评估：**
    - **波レット网络（Wavelet Network, WN）预测：** 使用实时训练的WN来预测目标在基座坐标系下的运动轨迹。WN能有效捕捉波浪扰动下的非线性和不确定性。
    - **置信度分析：** 为了评估预测质量，采用贝叶斯方法计算预测的置信度。得到一个实时的置信度区间（confidence tube），用于多步预测的准确性评估。

  2. **置信度感知的运动规划：**
    - **捕获位置选择：** 在预测的轨迹上选择一个置信度最高的捕获位置，通过最大化捕获位置的置信度，确定最佳的捕获时刻。
    - **运动轨迹规划：** 形成一个非线性优化问题，生成机械臂在任务空间中的捕获轨迹。该优化同时考虑了捕获的置信度和机械臂的运动可行性。
    - **计算效率提升：** 为了保证实时性（在0.2秒内完成所有计算），将优化问题拆分为两个更简单的问题：首先求解捕获位置，然后规划运动轨迹。

  *系统（设计）部分：*

  - **机械臂系统设计：** 使用一个冗余度较高的机械臂，安装在伺服平台上，以模拟浮动基座的扰动。机械臂末端配备电磁铁，能够在接触到目标后立即捕获。
  - **实验平台搭建：** 在实验中，利用真实的无人艇运动数据，通过伺服平台再现基座的六自由度运动，包括滚转、俯仰、偏航、推进、横移和升沉。
  - **传感与控制系统：** 使用运动捕捉系统实时获取目标和基座的位置和姿态信息。控制系统基于ROS架构，以高频率（1kHz）在关节位置层面控制机械臂。

  **效果**

  - **实验验证：** 通过模拟和实际实验，验证了所提方法的有效性。在进行了超过150次实验后，结果显示：
    - **成功率：** 在基座执行真实无人艇运动的情况下，所提方法实现了80%的捕获成功率。
    - **精度提升：** 相较于传统方法，捕获精度显著提高，均方误差（MAE）降低了25%以上。
    - **鲁棒性：** 即使在预测精度无法持续保持的情况下，通过置信度评估和初始化方法，提高了捕获的可靠性。

  **关键词**
  - 置信度分析，浮动基座机械臂，运动规划，目标捕获，波レット网络，贝叶斯方法，实时控制，无人艇，自动化系统

<!-- ##
- Confidence-Aware Object Capture for a Manipulator Subject to Floating-Base Disturbances 
*R. Xu, Z. Jiang, B. Liu, Y. Wang and H. Qian; IEEE Transactions on Robotics 2024 Vol. 40 Pages 4396-4413; DOI: 10.1109/tro.2024.3463476* -->


## 3.3 Vision Language Model - 视觉-语言模型 <a id="Vision-Language-Model"></a>
(Coming Soon...)  

## 3.4 Vision Language Action Model - 视觉-语言-动作模型 <a id="Vision-Language-Action"></a>
(Coming Soon...)  

## 3.5 Dual System - 双系统 <a id="Dual-System"></a>
(Coming Soon...)  


# 4. Paper List Links - 论文列表链接 <a id="paper-list-link"></a>
- [Awesome-LLM-Robotics: A repo contains a curative list of papers using Large Language/Multi-Modal Models for Robotics/RL](https://github.com/GT-RIPL/Awesome-LLM-Robotics)
- [SOTA Paper Rating - Weiyang Jin](https://waynejin0918.github.io/SOTA-paper-rating.io/)
- [Paper List For EmbodiedAI - Tianxing Chen](https://github.com/TianxingChen/Paper-List-For-EmbodiedAI)
- [Paper List - Yanjie Ze](https://github.com/YanjieZe/Paper-List)



# 5. Acknowledgement - 致谢 <a id="acknowledgement"></a>
>文中部分内容可能包括我们有access权限但是不对公众开放的内容（比如部分论文的PDF），仅做学术分享，如有侵权，请您第一时间联系我们删除。请勿将本仓库中的任何内容用作商业目的。如有相应部分因我们疏忽（比如引用了相关的内容但是忘记标明出处），请麻烦联系我们，我们会第一时间进行update。

本文转载/引用了一下一些团体/个人的内容，我们对他们的贡献表示感谢，以下是引用列表：

[1] Course Materials from CUHK, Shenzhen [Introduction to Robotics](https://github.com/yimouwu/Robotics-and-Embodied-AI-Review/tree/main/Awesome%20Course%20Materials/Introduction%20to%20Robotics)，[2] Feishu Docs [木木具身知识库](https://yv6uc1awtjc.feishu.cn/wiki/WPTzw9ON0ivIVrkLjVocNZh8nLf?from=from_copylink)，[3] Github repo [Embodied-AI-Guide](https://github.com/TianxingChen/Embodied-AI-Guide)，[4] Github repo [Awesome-Embodied-AI](https://github.com/yunlongdong/Awesome-Embodied-AI)

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
