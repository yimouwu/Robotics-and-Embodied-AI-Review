**Analysis of "Disturbance-Observer-Based Control and Related Methods—An Overview"**

**Abstract**

The paper presents a comprehensive survey of disturbance-observer-based control (DOBC) and related methods that have been developed and applied over the past four decades across various industrial sectors. It systematically reviews linear and nonlinear disturbance/uncertainty estimation techniques, including DOBC, active disturbance rejection control (ADRC), disturbance accommodation control (DAC), and composite hierarchical antidisturbance control (CHADC). The authors discuss and compare these methods, providing tutorials on their features and applications. The survey highlights the importance of disturbance/uncertainty estimation and attenuation in control systems, emphasizing the commercialization and industrialization of some algorithms, and concludes with discussions on future research directions.

**Motivation**

Disturbances and uncertainties are inherent in all industrial systems and can adversely affect performance and stability. Traditional feedback control systems often struggle to balance tracking performance with disturbance rejection and robustness. There is a need for control strategies that can effectively estimate and compensate for disturbances and uncertainties without compromising nominal system performance. This motivates the development and application of disturbance/uncertainty estimation and attenuation (DUEA) techniques, which can enhance system robustness and performance by actively estimating disturbances and integrating compensation mechanisms.

**Background & Gap**

While numerous methods exist for disturbance and uncertainty attenuation, including robust and adaptive control techniques, DUEA methods that employ disturbance observers have been independently developed in different fields and industries. These methods, such as DOBC, ADRC, DAC, and others, share similar fundamental ideas but have evolved separately, leading to a lack of synergy and understanding among them. The theoretical development of these methods often lags behind their practical applications, and their research is scattered across various publications, causing confusion and misunderstandings within the academic community.

**Challenge Details**

The main challenges addressed in the paper include:

- **Systematic Review**: Providing a comprehensive and systematic tutorial and summary of existing disturbance/uncertainty estimation and attenuation techniques.
- **Clarifying Relationships**: Explaining the similarities and differences among various methods to reduce confusion and promote synergy.
- **Theoretical Development**: Bridging the gap between practical applications and theoretical research by offering rigorous analysis and establishing fundamental properties like stability.
- **Dealing with Uncertainties**: Addressing both matched and mismatched disturbances and uncertainties in control system design.
- **Enhancing Applications**: Highlighting the commercialization and real-world applications of DUEA methods to encourage wider adoption and further development.

**Novelty**

This paper is the first to offer a detailed, systematic overview of DOBC and related methods, bringing together various techniques under a unified framework. It clarifies misconceptions and provides clear descriptions of each method's features, applications, and theoretical foundations. By summarizing the latest developments and establishing connections among different methods, the paper fills a critical gap in the literature and serves as a valuable resource for both researchers and practitioners.

**Algorithm and Method**

The paper reviews several key DUEA techniques, both linear and nonlinear, including:

1. **Frequency Domain DOB Design**: Uses a disturbance observer in the frequency domain to estimate and compensate for lumped disturbances by filtering the mismatch between the actual plant and its nominal model.

2. **Extended State Observer (ESO) in ADRC**: Introduces an ESO to estimate both the system states and the lumped disturbance (which includes external disturbances and model uncertainties), requiring minimal information about the system.

3. **Unknown Input Observer (UIO) in DAC**: Employs a state observer to estimate the state and disturbance simultaneously, integrating disturbance accommodation into the control design within a state-space framework.

4. **Uncertainty and Disturbance Estimator (UDE)**: Estimates the lumped disturbance by approximating the unmeasurable state derivative through filtering techniques, providing robustness against uncertainties.

5. **Equivalent Input Disturbance (EID) Estimator**: Calculates a disturbance estimate by filtering a modified output estimation error, aiming to compensate for the disturbance effects equivalently at the input channel.

6. **Generalized Proportional Integral Observer (GPIO)**: Extends the ESO to achieve higher estimation accuracy for time-varying disturbances by incorporating higher-order disturbance models into the observer design.

For nonlinear systems, the paper discusses:

1. **Nonlinear Disturbance Observer (NDOB)**: Estimates disturbances in nonlinear systems by designing an observer that ensures the estimation error converges exponentially, using Lyapunov stability theory for analysis.

2. **Extended High-Gain State Observer (EHGSO)**: An extension of the ESO that incorporates known nonlinear dynamics into the observer design, enhancing the estimation of disturbances and system states.

**Detailed Mathematical Derivations**

_**Frequency Domain DOB Design**_

The key idea is to estimate the lumped disturbance \( d_l(s) \) using the nominal plant model \( G_n(s) \) and actual measurements. Starting from the plant output:

\[
y(s) = G(s) u(s) + d(s) + n(s)
\]

Assuming the control input \( u(s) \) is:

\[
u(s) = c(s) - \hat{d}_l(s)
\]

Where \( c(s) \) is the output of the feedback controller and \( \hat{d}_l(s) \) is the estimated disturbance. The lumped disturbance is defined as:

\[
d_l(s) = \left[ G(s)^{-1} - G_n(s)^{-1} \right] y(s) + d(s) - G_n(s)^{-1} n(s)
\]

To estimate \( d_l(s) \), a filter \( Q(s) \) is applied:

\[
\hat{d}_l(s) = Q(s) d_l(s)
\]

The choice of \( Q(s) \) is crucial—it should be designed as a low-pass filter to ensure stability and implementability while effectively estimating disturbances within the frequency range of interest.

_**Extended State Observer (ESO)**_

For the system:

\[
y^{(n)}(t) = f(y, \dot{y},..., y^{(n-1)}, d, t) + b u(t)
\]

Define the state variables:

\[
x_1 = y, \quad x_2 = \dot{y}, \quad ..., \quad x_n = y^{(n-1)}, \quad x_{n+1} = f(y, \dot{y},..., y^{(n-1)}, d, t)
\]

The ESO is designed to estimate \( x_i \) and \( x_{n+1} \):

\[
\begin{cases}
\dot{\hat{x}}_i = \hat{x}_{i+1} + \beta_i (y - \hat{x}_1), & i = 1,..., n-1 \\
\dot{\hat{x}}_n = \hat{x}_{n+1} + \beta_n (y - \hat{x}_1) + b u(t) \\
\dot{\hat{x}}_{n+1} = \beta_{n+1} (y - \hat{x}_1)
\end{cases}
\]

Here, \( \beta_i \) are observer gains, often chosen to ensure rapid convergence of the estimation errors. The ESO simultaneously estimates the states and the lumped disturbance \( f \), allowing for disturbance compensation in the control law.

**Challenge in Mathematical Derivations**

One of the key challenges in these methods is ensuring the stability and convergence of the observer and control system. For instance, in the ESO, selecting appropriate observer gains \( \beta_i \) is critical. High gains can improve convergence speed but may amplify noise and lead to instability. Balancing these aspects requires careful analysis, often involving Lyapunov functions and stability criteria.

**Possible Future Extensions**

- **Adaptive Gain Tuning**: Developing methods for adaptive adjustment of observer gains based on system performance metrics to enhance disturbance estimation accuracy without compromising stability.
- **Nonlinear System Extensions**: Extending DUEA techniques to a broader class of nonlinear and non-minimum phase systems, addressing challenges like unmodeled dynamics and parameter variations.
- **Integration with Machine Learning**: Incorporating machine learning algorithms to predict disturbances based on historical data, improving estimations in complex or time-varying environments.
- **Distributed Systems**: Applying DUEA methods to networked control systems and multi-agent systems where disturbances may propagate through interconnected nodes.

**Conclusion & Achievement**

The paper successfully bridges the gap between various DUEA methods, offering clarity and promoting a unified understanding of DOBC and related techniques. It emphasizes the significant impact these methods have had on industrial applications, including their commercialization in products like servo motors and motion control chips. The authors call for further theoretical research, improved design methods, and new tools for analysis to advance the field. By serving as both a tutorial and a survey, the paper provides valuable insights and guidance for future research and application of disturbance and uncertainty estimation and attenuation methods.

---

**中文翻译**

**对《基于扰动观测器的控制及相关方法综述》的分析**

**摘要**

本文对过去四十年来在各个工业领域中开发和应用的基于扰动观测器的控制（DOBC）及相关方法进行了全面的综述。系统地回顾了线性和非线性扰动/不确定性估计技术，包括DOBC、主动扰动抑制控制（ADRC）、扰动容纳控制（DAC）和复合分层抗扰动控制（CHADC）。作者讨论并比较了这些方法，为其特征和应用提供了教程。该综述强调了在控制系统中扰动/不确定性估计和抑制的重要性，强调了一些算法的商业化和产业化，最后讨论了未来的研究方向。

**动机**

扰动和不确定性是所有工业系统中固有的，会对性能和稳定性产生不利影响。传统的反馈控制系统在平衡跟踪性能、扰动抑制和鲁棒性方面往往存在困难。需要能够有效估计和补偿扰动和不确定性而不损害名义系统性能的控制策略。这促进了扰动/不确定性估计和抑制（DUEA）技术的发展和应用，通过主动估计扰动并整合补偿机制，可以增强系统的鲁棒性和性能。

**背景与差距**

尽管存在许多用于扰动和不确定性抑制的方法，包括鲁棒和自适应控制技术，但采用扰动观测器的DUEA方法是在不同领域和行业独立开发的。这些方法，如DOBC、ADRC、DAC等，虽然具有相似的基本思想，但独立演化，导致它们之间缺乏协同和理解。这些方法的理论发展往往落后于实际应用，其研究分散在各种出版物中，导致学术界的混淆和误解。

**挑战细节**

论文解决的主要挑战包括：

- **系统综述**：提供现有扰动/不确定性估计和抑制技术的全面和系统的教程和综述。
- **澄清关系**：解释各种方法之间的相似性和差异，以减少混淆并促进协同。
- **理论发展**：通过提供严格的分析并建立稳定性等基本属性，弥合实践应用与理论研究之间的差距。
- **处理不确定性**：在控制系统设计中处理匹配和不匹配的扰动和不确定性。
- **增强应用**：强调DUEA方法的商业化和实际应用，鼓励更广泛的采用和进一步发展。

**新颖性**

该论文首次提供了DOBC及相关方法的详细、系统的综述，在统一的框架下汇集了各种技术。它澄清了误解，并提供了对每种方法的特征、应用和理论基础的清晰描述。通过总结最新发展并建立不同方法之间的联系，论文填补了文献中的关键空白，对研究人员和从业者具有重要价值。

**算法与方法**

论文回顾了几种关键的DUEA技术，包括线性和非线性的：

1. **频域DOB设计**：使用频域的扰动观测器，通过滤波实际装置与其名义模型之间的不匹配，来估计和补偿合并的扰动。

2. **ADRC中的扩展状态观测器（ESO）**：引入ESO来估计系统的状态和合并的扰动（包括外部扰动和模型不确定性），所需的系统信息最少。

3. **DAC中的未知输入观测器（UIO）**：使用状态观测器同时估计状态和扰动，在状态空间框架内将扰动容纳整合到控制设计中。

4. **不确定性和扰动估计器（UDE）**：通过滤波技术近似不可测的状态导数来估计合并的扰动，对不确定性具有鲁棒性。

5. **等效输入扰动（EID）估计器**：通过滤波修改的输出估计误差来计算扰动估计，旨在在输入通道上等效地补偿扰动效应。

6. **广义比例积分观测器（GPIO）**：将ESO扩展，以通过在观测器设计中整合高阶扰动模型，实现对时变扰动的更高估计精度。

对于非线性系统，论文讨论了：

1. **非线性扰动观测器（NDOB）**：在非线性系统中估计扰动，通过设计观测器确保估计误差指数收敛，使用李雅普诺夫稳定性理论进行分析。

2. **扩展高增益状态观测器（EHGSO）**：ESO的扩展，将已知的非线性动力学纳入观测器设计，增强对扰动和系统状态的估计。

**详细的数学推导**

_**频域DOB设计**_

关键思想是使用名义模型\( G_n(s) \)和实际测量来估计合并的扰动\( d_l(s) \)。从装置输出开始：

\[
y(s) = G(s) u(s) + d(s) + n(s)
\]

假设控制输入\( u(s) \)为：

\[
u(s) = c(s) - \hat{d}_l(s)
\]

其中\( c(s) \)是反馈控制器的输出，\( \hat{d}_l(s) \)是估计的扰动。定义合并的扰动为：

\[
d_l(s) = \left[ G(s)^{-1} - G_n(s)^{-1} \right] y(s) + d(s) - G_n(s)^{-1} n(s)
\]

要估计\( d_l(s) \)，应用滤波器\( Q(s) \)：

\[
\hat{d}_l(s) = Q(s) d_l(s)
\]

\( Q(s) \)的选择至关重要——应设计为低通滤波器，以确保稳定性和可实现性，同时有效地估计感兴趣频率范围内的扰动。

_**扩展状态观测器（ESO）**_

对于系统：

\[
y^{(n)}(t) = f(y, \dot{y},..., y^{(n-1)}, d, t) + b u(t)
\]

定义状态变量：

\[
x_1 = y, \quad x_2 = \dot{y}, \quad ..., \quad x_n = y^{(n-1)}, \quad x_{n+1} = f(y, \dot{y},..., y^{(n-1)}, d, t)
\]

ESO被设计为估计\( x_i \)和\( x_{n+1} \)：

\[
\begin{cases}
\dot{\hat{x}}_i = \hat{x}_{i+1} + \beta_i (y - \hat{x}_1), & i = 1,..., n-1 \\
\dot{\hat{x}}_n = \hat{x}_{n+1} + \beta_n (y - \hat{x}_1) + b u(t) \\
\dot{\hat{x}}_{n+1} = \beta_{n+1} (y - \hat{x}_1)
\end{cases}
\]

这里，\( \beta_i \)是观测器增益，通常选择以确保估计误差的快速收敛。ESO同时估计状态和合并的扰动\( f \)，允许在控制律中进行扰动补偿。

**数学推导中的挑战**

这些方法的关键挑战之一是确保观测器和控制系统的稳定性和收敛性。例如，在ESO中，选择适当的观测器增益\( \beta_i \)至关重要。高增益可以提高收敛速度，但可能放大噪声并导致不稳定。平衡这些方面需要仔细的分析，通常涉及李雅普诺夫函数和稳定性准则。

**可能的未来拓展**

- **自适应增益调谐**：开发用于基于系统性能指标自适应调整观测器增益的方法，以在不牺牲稳定性的情况下提高扰动估计精度。
- **非线性系统扩展**：将DUEA技术扩展到更广泛的非线性和非最小相位系统，解决未建模动力学和参数变化等挑战。
- **与机器学习的集成**：结合机器学习算法，根据历史数据预测扰动，在复杂或时变环境中提高估计。
- **分布式系统**：将DUEA方法应用于网络控制系统和多智能体系统，其中扰动可能通过互联节点传播。

**结论与成就**

该论文成功地弥合了各种DUEA方法之间的差距，提供了清晰性并促进了对DOBC及相关技术的统一理解。它强调了这些方法对工业应用的重大影响，包括它们在伺服电机和运动控制芯片等产品中的商业化。作者呼吁进一步的理论研究、改进的设计方法和新的分析工具，以推进该领域。通过同时作为教程和综述，论文为扰动和不确定性估计和抑制方法的未来研究和应用提供了宝贵的见解和指导。