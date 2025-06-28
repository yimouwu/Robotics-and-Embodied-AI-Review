# 机器人运动规划控制常用的 Learning 方法

本文总结了机器人运动规划控制在 **具身 Manipulation 方向** 的常用学习方法，包括传统方法和基于 Learning 的新方法。
![img_38.png](../../1/assests/screenshot/screenshotBy12302024/img_38.png)
---

## 一、传统方法

1. **DH Table 方法**
    - 建立 DH Table
    - 任务分解
    - 逐个子任务规划
    - 逐个子任务控制

2. **Screw Axes Table 方法**
    - 建立 Screw Axes Table
    - 任务分解
    - 逐个子任务规划
    - 逐个子任务控制

---

## 二、Learning Based 机器人任务规划

3. **BrainLLM-BodyLLM**
    - 将多任务通过大模型，学习拆分成多个可执行的单任务。

4. **AutoRT**
    - 间接学习任务分解。

---

## 三、Learning Based 机器人导航 (Navigation)

5. **NoMaD**
    - 学习机器人朝哪个方向前进。

6. **NoVid**
    - 预测机器人小车应向前移动多少厘米，以及左转/右转多少度。

---

## 四、Learning Based 机器人 Manipulation

7. **Adaptive Mobile Manipulation**
    - 通过大模型学习原语，利用中间函数将原语转化为控制命令。

---

## 五、Learning Based 机器人轨迹规划 (Trajectory Planning)

8. **RT-1**
    - 预测机械臂末端执行器（end-effector）的位姿：
        - **(x, y, z, roll, pitch, yaw, gripper opening)**。

9. **RT-Trajectory**
    - 预测机械臂末端执行器的轨迹。

---

## 六、Learning Based 机器人控制 (Control)

10. **OpenVLA and RT-2**
    - 预测机械臂末端执行器的 **△translation** 和 **△rotation**。

11. **Octo**
    - 预测机械臂关节的位置。

12. **Real-world Humanoid**
    - 直接学习驱动关节 PID 控制器的参数。

---
![img_39.png](../../1/assests/screenshot/screenshotBy12302024/img_39.png)
![img_40.png](../../1/assests/screenshot/screenshotBy12302024/img_40.png)
![img_41.png](../../1/assests/screenshot/screenshotBy12302024/img_41.png)
![img_42.png](../../1/assests/screenshot/screenshotBy12302024/img_42.png)
![img_43.png](../../1/assests/screenshot/screenshotBy12302024/img_43.png)
![img_44.png](../../1/assests/screenshot/screenshotBy12302024/img_44.png)
![img_45.png](../../1/assests/screenshot/screenshotBy12302024/img_45.png)
![img_46.png](../../1/assests/screenshot/screenshotBy12302024/img_46.png)