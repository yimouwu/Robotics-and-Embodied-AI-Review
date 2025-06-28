欢迎大家关注我们关于世界仿真器（World Simulator）评估的工作：《WorldSimBench: Towards Video Generation Models as World
Simulators》
随着SORA和可灵等强大的视频生成模型的出现，为世界仿真器和世界模型的实现提供了一条可行的技术路线。
然而由于世界仿真器所表达的物理规则和逻辑规律无法用传统评测手段有效评估，因此需要一套合理且可行的评估方法。
WorldSimBench包括显式感知评价和隐式操作评估，包括从视觉角度对人类偏好的评价和在具身任务中的行动层面的评价，涵盖了三个代表性的具身场景：开放式具身环境、自动驾驶和机器人操作。
在显式感知评估中，我们引入了HF-Embodied Dataset，这是一个基于高细粒度人类反馈的视频评估数据集，我们使用它来训练一个与人类感知一致的人类偏好评估器，并在之后明确评估World
Simulator的视觉保真度。
在隐式操纵评估中，我们通过评估生成的态势感知视频是否能在动态环境中准确地转化为正确的控制信号来评估世界模拟器的视频-动作一致性。

更多内容可以参考论文

![img.png](../../1/assests/screenshot/screenshotBy12302024/img_0.png)
![img_1.png](../../1/assests/screenshot/screenshotBy12302024/img_1.png)
![img_2.png](../../1/assests/screenshot/screenshotBy12302024/img_2.png)
![img_3.png](../../1/assests/screenshot/screenshotBy12302024/img_3.png)
![img_4.png](../../1/assests/screenshot/screenshotBy12302024/img_4.png)
![img_5.png](../../1/assests/screenshot/screenshotBy12302024/img_5.png)