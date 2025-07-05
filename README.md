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
        <li><a href="#Scene-Understanding">1.4.1 Computer Vision - 计算机视觉</a></li>
        <ul>
          <li><a href="#2D-Vision">1.4.1.1 2D Vision - 二维视觉</a></li>
          <li><a href="#3D-Vision">1.4.1.2 3D Vision - 三维视觉</a></li>
          <li><a href="#3D-Vision">1.4.1.3 4D Vision - 四维视觉</a></li>
          <li><a href="#Subdivision-of-application-domains">1.4.1.4 Subdivision of application domains - 应用领域细分</a></li>
          <ul>
            <li><a href="#Visual-Prompting">1.4.1.4.1 Visual Prompting - 视觉提示</a></li>
            <li><a href="#Affordance-Grounding">1.4.1.4.2 Affordance Grounding - 可供性锚定</a></li>
            <ul>
              <li><a href="#Two-Dimension">1.4.1.4.2.1 2D - 二维</a></li>
              <li><a href="#Three-Dimension">1.4.1.4.2.2 3D - 三维</a></li>
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
(Coming Soon...)  

### 1.1.2 Mathematical Concepts and Spatial Transformation - 数学概念与空间转换 <a id="Mathematical-Concepts-and-Spatial-Transformation"></a>
(Coming Soon...)  

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
(Coming Soon...)  

### 1.3.2 Search-Based Methods - 基于搜索的方法 <a id="Search-Based-Methods"></a>
(Coming Soon...)  

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

### 1.4.1 Computer Vision - 计算机视觉 <a id="Scene-Understanding"></a>

#### 1.4.1.1 2D Vision - 二维视觉 <a id="2D-Vision"></a>
(Coming Soon...)  

#### 1.4.1.2 3D Vision - 三维视觉 <a id="3D-Vision"></a>
(Coming Soon...)  

#### 1.4.1.3 4D Vision - 四维视觉 <a id="4D-Vision"></a>
(Coming Soon...)  

#### 1.4.1.4 Subdivision of Application Domains - 应用领域细分 <a id="Subdivision-of-application-domains"></a>

##### 1.4.1.4.1 Visual Prompting - 视觉提示 <a id="Visual-Prompting"></a>
(Coming Soon...)  

##### 1.4.1.4.2 Affordance Grounding - 可供性锚定 <a id="Affordance-Grounding"></a>

###### 1.4.1.4.2.1 2D - 二维 <a id="Two-Dimension"></a>
(Coming Soon...)  

###### 1.4.1.4.2.2 3D - 三维 <a id="Three-Dimension"></a>
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
(Coming Soon...)  

## 3.2 Model Predictive Control - 模型预测控制 <a id="Model-Predictive-Control"></a>
(Coming Soon...)  

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
