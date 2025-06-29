<h1 align="center">Robotics-and-Embodied-AI-Review</h1>

<p align="center">
  <strong>机器人学与具身智能学习综述库</strong><br>
  Robotics and Embodied AI Guide, Learning Resources, Course Materials, Daily Paper Reviews, Awesome Blogs...
</p>


> 这是一个专注于机器人学与具身智能领域的综述库。包括领域入门指南、每日论文阅读笔记、课程资料、教授/博主分享的优质资源以及社交媒体上的高质量内容等。主要服务于个人学习，知识体系构建以及专业上的拓展。
希望初学者可以通过本仓库快速建立关于相关领域的认知, 也希望能为大佬们提供些文献阅读上的便利～ 欢迎点Star、分享与提PR🌟~<br>【 <a href="https://github.com/yimouwu/Robotics-and-Embodied-AI-Review">Robotics-and-Embodied-AI-Review</a>, Latest Update: Jul. 1, 2025 】<img alt="GitHub repo stars" src="https://img.shields.io/github/stars/yimouwu/Robotics-and-Embodied-AI-Review"> ![Visitors](https://api.visitorbadge.io/api/visitors?path=https%3A%2F%2Fgithub.com%2Fyimouwu%2FRobotics-and-Embodied-AI-Review&label=Daily%20Visitors&labelColor=%234ccce4&countColor=%23d9e3f0) <img src="https://img.shields.io/badge/MIT-License-green.svg" alt="license">





# Contents - 目录
<nav>
<ul>
  <li><a href="#links">0. Recommended Links - 优质资源链接</a></li>
  
  <li><a href="#research-areas-guide">1. Research Areas Guide - 研究领域入门指南</a>
    <ul>
      <li><a href="#control-and-robotics">1.1 Control and Robotics - 控制论与机器人学基础</a>
        <ul>
          <li><a href="#control-theory-basics">1.1.1 控制理论基础</a>
            <ul>
              <li><a href="#classical-control-principles">1.1.1.1 经典控制原理</a></li>
              <li><a href="#modern-control-theory">1.1.1.2 现代控制理论(线性系统控制)</a></li>
              <li><a href="#advanced-control-techniques">1.1.1.3 先进控制技术</a></li>
            </ul>
          </li>
          <li><a href="#introduction-to-robotics">1.1.2 机器人学导论</a>
            <ul>
              <li><a href="#recommended-materials">1.1.2.1 推荐资料</a></li>
              <li><a href="#robot-kinematics-and-dynamics">1.1.2.2 机器人运动学与动力学</a></li>
              <li><a href="#odometry-and-slam">1.1.2.3 里程计和同步定位与建图 (Odometry & SLAM)</a></li>
              <li><a href="#miscellaneous">1.1.2.4 杂项</a></li>
            </ul>
          </li>
        </ul>
      </li>
      <!-- <li><a href="#foundation-models">1.1 Foundation Models - 基础模型</a></li>
      <li><a href="#robot-learning">1.2 Robot Learning - 机器人学习</a>
        <ul>
          <li><a href="#eth-ttic-udem-robot-autonomy">1.2.1 ETH & TTIC & UdeM Robot Autonomy - 自主机器人</a></li>
          <li><a href="#model-predictive-control">1.2.2 Model Predictive Control - 模型预测控制</a></li>
          <li><a href="#reinforcement-learning">1.2.3 Reinforcement Learning - 强化学习</a></li>
          <li><a href="#imitation-learning">1.2.4 Imitation Learning - 仿人学习</a></li>
          <li><a href="#mila-udem-robot-learning">1.2.5 MILA & UdeM Robot Learning - 机器人学习课程</a></li>
          <li><a href="#cmu-16-831">1.2.6 CMU 16-831 Introduction to Robot Learning - 机器人学习导论</a></li>
          <li><a href="#usc-csci-699">1.2.7 USC CSCI 699: Robot Learning - 机器人学习</a></li>
          <li><a href="#mit-64210">1.2.8 MIT 6.4210/6.4212: Robotic Manipulation - 机器人操作</a></li>
          <li><a href="#mit-68210">1.2.9 MIT 6.8210: Underactuated Robotics - 欠驱动机器人</a></li>
        </ul>
      </li>
      <li><a href="#llm-for-robotics">1.3 LLM for Robotics - 大语言模型在机器人学中的应用</a></li>
      <li><a href="#vla-models">1.4 Vision-Language-Action Models - VLA模型</a></li>
      <li><a href="#computer-vision">1.5 Computer Vision - 计算机视觉</a>
        <ul>
          <li><a href="#2d-vision">1.5.1 2D Vision - 二维视觉</a></li>
          <li><a href="#3d-vision">1.5.2 3D Vision - 三维视觉</a></li>
          <li><a href="#4d-vision">1.5.3 4D Vision - 四维视觉</a></li>
          <li><a href="#visual-prompting">1.5.4 Visual Prompting - 视觉提示</a></li>
          <li><a href="#affordance-grounding">1.5.5 Affordance Grounding - 可供性锚定</a></li>
        </ul>
      </li>
      <li><a href="#computer-graphics">1.6 Computer Graphics - 计算机图形学</a></li>
      <li><a href="#multimodal-models">1.7 Multimodal Models - 多模态模型</a></li>
      <li><a href="#robot-navigation">1.8 Robot Navigation - 机器人巡航</a></li>
      <li><a href="#embodied-ai-for-x">1.9 Embodied AI for X - 具身智能+X</a>
        <ul>
          <li><a href="#eai-for-healthcare">1.9.1 EAI for Healthcare - 具身医疗</a></li>
          <li><a href="#uav">1.9.2 UAV - 无人机</a></li>
          <li><a href="#autonomous-driving">1.9.3 Autonomous Driving - 自动驾驶</a></li>
        </ul>
      </li> -->
    </ul>
  </li>
  
  <li><a href="#tools">2. Tools - 工具</a>
    <ul>
      <li><a href="#software">2.1 Software - 软件</a>
        <ul>
          <li><a href="#simulators">2.1.1 Simulators - 仿真器</a></li>
          <li><a href="#benchmarks">2.1.2 Benchmarks - 基准集</a></li>
          <li><a href="#datasets">2.1.3 Datasets - 数据集</a></li>
        </ul>
      </li>
      <li><a href="#hardware">2.2 Hardware - 硬件</a>
        <ul>
          <li><a href="#embedded">2.2.1 Embedded - 嵌入式</a></li>
          <li><a href="#mechanical-design">2.2.2 Mechanical Design - 机械设计</a></li>
          <li><a href="#robot-system-design">2.2.3 Robot System Design - 机器人系统设计</a></li>
          <li><a href="#sensors">2.2.4 Sensors - 传感器</a></li>
          <li><a href="#tactile-sensing">2.2.5 Tactile Sensing - 触觉感知</a></li>
          <li><a href="#companies">2.2.6 Companies - 公司</a></li>
        </ul>
      </li>
    </ul>
  </li>
  
  <li><a href="#literature-review">3. Literature Review - 文献综述</a>
    <ul>
      <li><a href="#awesome-blogs">3.1 Awesome Blogs</a></li>
      <li><a href="#paper-review">3.2 Paper Review</a></li>
    </ul>
  </li>
  
  <li><a href="#paper-lists">4. Paper Lists - 论文列表</a></li>
  <li><a href="#acknowledgement">5. Acknowledgement - 致谢</a></li>
  <li><a href="#citation">👍 Citation</a></li>
  <li><a href="#license">🏷️ License</a></li>
  <li><a href="#star-history">⭐️ Star History</a></li>
</ul>
</nav>



# 0. Recommended Links - 优质资源链接 <a id="links"></a>

###### - [Embodied-AI-Guide](https://github.com/tianxingchen/Embodied-AI-Guide) - 具身智能系统性学习指南
###### - [华人学术排行榜](https://github.com/Will-Gao/Embodied_Intelligence) - 领域专家信息
###### - [具身智能招贤榜](https://github.com/StarCycle/Awesome-Embodied-AI-Job) - 行业招聘信息




# 1. Research Areas Guide - 研究领域入门指南 <a id="research-areas-guide"></a>

## 1.1 Control and Robotics - 控制论与机器人学基础 <a id="control-and-robotics"></a>

### 1.1.1 控制理论基础 <a id="control-theory-basics"></a>

#### 1.1.1.1 经典控制原理 <a id="classical-control-principles"></a>

（内容待补充）

#### 1.1.1.2 现代控制理论(线性系统控制) <a id="modern-control-theory"></a>

（内容待补充）

#### 1.1.1.3 先进控制技术 <a id="advanced-control-techniques"></a>

（内容待补充）

### 1.1.2 机器人学导论 <a id="introduction-to-robotics"></a>

#### 1.1.2.1 推荐资料 <a id="recommended-materials"></a>

（内容待补充）

#### 1.1.2.2 机器人运动学与动力学 <a id="robot-kinematics-and-dynamics"></a>

（内容待补充）

#### 1.1.2.3 里程计和同步定位与建图 (Odometry & SLAM) <a id="odometry-and-slam"></a>

（内容待补充）

#### 1.1.2.4 杂项 <a id="miscellaneous"></a>

（内容待补充）

<!-- ## 1.1 Foundation Models - 基础模型 <a id="foundation-models"></a>

（内容待补充）

## 1.2 Robot Learning - 机器人学习 <a id="robot-learning"></a>

### 1.2.1 ETH & TTIC & UdeM Robot Autonomy - 自主机器人 <a id="eth-ttic-udem-robot-autonomy"></a>

（内容待补充）

### 1.2.2 Model Predictive Control - 模型预测控制 <a id="model-predictive-control"></a>

（内容待补充）

### 1.2.3 Reinforcement Learning - 强化学习 <a id="reinforcement-learning"></a>

（内容待补充）

### 1.2.4 Imitation Learning - 仿人学习 <a id="imitation-learning"></a>

（内容待补充）

### 1.2.5 MILA & UdeM Robot Learning - 机器人学习课程 <a id="mila-udem-robot-learning"></a>

（内容待补充）

### 1.2.6 CMU 16-831 Introduction to Robot Learning - 机器人学习导论 <a id="cmu-16-831"></a>

（内容待补充）

### 1.2.7 USC CSCI 699: Robot Learning - 机器人学习 <a id="usc-csci-699"></a>

（内容待补充）

### 1.2.8 MIT 6.4210/6.4212: Robotic Manipulation - 机器人操作 <a id="mit-64210"></a>

（内容待补充）

### 1.2.9 MIT 6.8210: Underactuated Robotics - 欠驱动机器人 <a id="mit-68210"></a>

（内容待补充）

## 1.3 LLM for Robotics - 大语言模型在机器人学中的应用 <a id="llm-for-robotics"></a>

（内容待补充）

## 1.4 Vision-Language-Action Models - VLA模型 <a id="vla-models"></a>

（内容待补充）

## 1.5 Computer Vision - 计算机视觉 <a id="computer-vision"></a>

### 1.5.1 2D Vision - 二维视觉 <a id="2d-vision"></a>

（内容待补充）

### 1.5.2 3D Vision - 三维视觉 <a id="3d-vision"></a>

（内容待补充）

### 1.5.3 4D Vision - 四维视觉 <a id="4d-vision"></a>

（内容待补充）

### 1.5.4 Visual Prompting - 视觉提示 <a id="visual-prompting"></a>

（内容待补充）

### 1.5.5 Affordance Grounding - 可供性锚定 <a id="affordance-grounding"></a>

（内容待补充）

## 1.6 Computer Graphics - 计算机图形学 <a id="computer-graphics"></a>

（内容待补充）

## 1.7 Multimodal Models - 多模态模型 <a id="multimodal-models"></a>

（内容待补充）

## 1.8 Robot Navigation - 机器人巡航 <a id="robot-navigation"></a>

（内容待补充）

## 1.9 Embodied AI for X - 具身智能+X <a id="embodied-ai-for-x"></a>

### 1.9.1 EAI for Healthcare - 具身医疗 <a id="eai-for-healthcare"></a>

（内容待补充）

### 1.9.2 UAV - 无人机 <a id="uav"></a>

（内容待补充）

### 1.9.3 Autonomous Driving - 自动驾驶 <a id="autonomous-driving"></a>

（内容待补充） -->




# 2. Tools - 工具 <a id="tools"></a>

## 2.1 Software - 软件 <a id="software"></a>

### 2.1.1 Simulators - 仿真器 <a id="simulators"></a>

（内容待补充）

### 2.1.2 Benchmarks - 基准集 <a id="benchmarks"></a>

（内容待补充）

### 2.1.3 Datasets - 数据集 <a id="datasets"></a>

（内容待补充）

## 2.2 Hardware - 硬件 <a id="hardware"></a>

### 2.2.1 Embedded - 嵌入式 <a id="embedded"></a>

（内容待补充）

### 2.2.2 Mechanical Design - 机械设计 <a id="mechanical-design"></a>

（内容待补充）

### 2.2.3 Robot System Design - 机器人系统设计 <a id="robot-system-design"></a>

（内容待补充）

### 2.2.4 Sensors - 传感器 <a id="sensors"></a>

（内容待补充）

### 2.2.5 Tactile Sensing - 触觉感知 <a id="tactile-sensing"></a>

（内容待补充）

### 2.2.6 Companies - 公司 <a id="companies"></a>

（内容待补充）



# 3. Literature Review - 文献综述 <a id="literature-review"></a>

## 3.1 Awesome Blogs <a id="awesome-blogs"></a>

（内容待补充）

## 3.2 Paper Review <a id="paper-review"></a>

以下是论文评述列表：

| 会议/期刊 | 作者 | 关键词 | 主要贡献 | 技术细节 | 实验结果 | 个人评价 | 相关工作 |
|-----------|------|--------|----------|----------|----------|----------|----------|
| **[论文标题]** | 作者姓名 | 关键词 | 主要贡献摘要 | 关键技术细节 | 实验结果概述 | 个人评价 | 相关工作链接 |
| ... | ... | ... | ... | ... | ... | ... | ... |

（内容待补充）



# 4. Paper Lists - 论文列表 <a id="paper-lists"></a>

（内容待补充）



# 5. Acknowledgement - 致谢 <a id="acknowledgement"></a>
>文中部分内容包括我们有access权限但是不对公众开放的内容（比如部分论文的PDF），仅做学术分享，如有侵权，请您第一时间联系我删除。请勿将本仓库中的任何内容用作商业目的。如有相应部分因我们疏忽（比如引用了相关的内容但是忘记标明出处），请麻烦联系我们，我们会第一时间进行update。

####
# About us - 关于我们
###### "己欲立而立人，己欲达而达人"
我们是一个由机器人与具身初学者组成的团队, 希望能够通过我们自己的学习、科研经验, 为志同道合的朋友提供一些帮助。欢迎更多朋友加入我们的项目, 也很欢迎交友、学术合作, 有任何问题, 可以联系邮箱`yimouwu0@gmail.com`。

<p><b>🦉Contributors</b>: <a href="https://yimouwu.github.io/">吴贻谋 (25'港中文MPhil)</a> 
</p> 

<a href="https://github.com/yimouwu/Robotics-and-Embodied-AI-Review/contributors">
  <img src="https://contrib.rocks/image?repo=yimouwu/Robotics-and-Embodied-AI-Review" />
</a>

#####
> 关于本仓库的任何问题，或者知识讨论,欢迎联系吴贻谋（25'fall CUHK 医学院外科系 MPhil，方向为机器人（医疗）与具身智能）微信：yimouwu777 或者 邮箱：yimouwu0@gmail.com

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
