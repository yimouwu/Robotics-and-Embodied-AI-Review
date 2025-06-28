**Model Predictive Control (MPC) - Summary and Analysis**

**Summary**

Model Predictive Control (MPC) is an advanced control strategy that utilizes an explicit dynamic model of the system to predict future behavior over a finite time horizon. At each control interval, MPC solves an optimization problem to determine the control inputs that optimize a specified performance criterion while satisfying constraints on inputs and outputs. The first control input of the optimized sequence is applied to the system, and the process repeats at the next time step, incorporating new measurements or estimates of the system state.

**Analysis**

MPC is renowned for its ability to handle multivariable control problems with constraints, making it especially valuable in industries where safety and operational limits are critical, such as chemical processing, aerospace, and automotive systems. Key features of MPC include:

1. **Prediction Model**: MPC relies on a mathematical model of the system dynamics to forecast future outputs. The model can be linear or nonlinear, deterministic or stochastic.

2. **Optimization**: At each time step, MPC formulates and solves an optimization problem to minimize a cost function (often quadratic), subject to the model dynamics and constraints.

3. **Constraints Handling**: MPC explicitly incorporates constraints on control inputs, states, and outputs, allowing the controller to operate optimally within physical and safety limits.

4. **Receding Horizon Approach**: Only the first control action from the optimized sequence is implemented. At the next time step, the horizon moves forward (recedes), and the optimization is repeated with updated information.

5. **Feedback Mechanism**: MPC inherently provides feedback by integrating recent measurements into the optimization, enhancing robustness against disturbances and model inaccuracies.

**Classic Representative Works in the Field of MPC**

1. **Early Developments**:

   - **Richalet, J., Rault, A., Testud, J. L., & Papon, J. (1978). "Model predictive heuristic control: Applications to industrial processes." *Automatica*, 14(5), 413-428.**

     This seminal paper introduced the concept of Model Predictive Heuristic Control (MPHC), marking one of the earliest practical applications of predictive control in industry.

   - **Cutler, C. R., & Ramaker, B. L. (1980). "Dynamic matrix control—a computer control algorithm." *Proc. of the Joint Automatic Control Conference*.**

     Introduced Dynamic Matrix Control (DMC), a pioneering MPC algorithm widely adopted in the process industries.

2. **Theoretical Foundations**:

   - **Garcia, C. E., Prett, D. M., & Morari, M. (1989). "Model predictive control: Theory and practice—a survey." *Automatica*, 25(3), 335-348.**

     This comprehensive survey paper discusses the theoretical underpinnings of MPC and its practical applications, establishing a foundation for future research.

3. **Stability and Robustness**:

   - **Mayne, D. Q., Rawlings, J. B., Rao, C. V., & Scokaert, P. O. M. (2000). "Constrained model predictive control: Stability and optimality." *Automatica*, 36(6), 789-814.**

     This influential paper addresses key issues of stability and optimality in constrained MPC, providing rigorous theoretical guarantees.

4. **Nonlinear MPC**:

   - **Findeisen, R., & Allgöwer, F. (2002). "An introduction to nonlinear model predictive control." *In 21st Benelux Meeting on Systems and Control*.**

     Offers an accessible introduction to nonlinear MPC, expanding the applicability of MPC to systems with significant nonlinearities.

5. **Explicit MPC**:

   - **Bemporad, A., Morari, M., Dua, V., & Pistikopoulos, E. N. (2002). "The explicit linear quadratic regulator for constrained systems." *Automatica*, 38(1), 3-20.**

     Discusses the formulation of explicit MPC solutions, crucial for systems requiring fast real-time control.

6. **Applications and Technology Transfer**:

   - **Qin, S. J., & Badgwell, T. A. (2003). "A survey of industrial model predictive control technology." *Control Engineering Practice*, 11(7), 733-764.**

     Surveys the adoption of MPC in industry, highlighting practical considerations and the impact of MPC on industrial processes.

7. **Robust MPC**:

   - **Scokaert, P. O. M., & Mayne, D. Q. (1998). "Min-max feedback model predictive control for constrained linear systems." *IEEE Transactions on Automatic Control*, 43(8), 1136-1142.**

     Addresses robustness in MPC, proposing methods to handle model uncertainties and ensure performance under disturbances.

8. **Learning-Based MPC**:

   - **Koller, T., Berkenkamp, F., Turchetta, M., & Krause, A. (2018). "Learning-based model predictive control for safe exploration and reinforcement learning." *In 2018 IEEE Conference on Decision and Control (CDC)*, 6059-6066.**

     Integrates machine learning with MPC, representing modern trends in incorporating data-driven models and learning in control.

**Conclusion**

Model Predictive Control represents a significant advancement in control theory and practice, providing a framework that merges optimization, prediction, and control within a single strategy. Its ability to consider future events and constraints systematically makes it a powerful tool for controlling complex systems. The classic works listed have shaped the development of MPC, addressing theoretical challenges and expanding its practical applications across various industries.

---

**模型预测控制 (MPC) - 总结与分析**

**摘要**

模型预测控制（MPC）是一种先进的控制策略，利用系统的显式动态模型预测有限时间范围内的未来行为。每个控制周期，MPC 通过求解优化问题来确定控制输入，以优化指定的性能指标，同时满足输入和输出的约束条件。优化序列中的第一个控制输入应用于系统，在下一个时间步中，结合新的系统状态测量或估计，重复该过程。

**分析**

MPC 因其处理具有约束的多变量控制问题的能力而著称，尤其在安全和操作限制至关重要的行业中，如化工、航空航天和汽车系统。MPC 的关键特点包括：

1. **预测模型**：MPC 依赖于系统动力学的数学模型来预测未来的输出。模型可以是线性或非线性的，确定性或随机性的。

2. **优化**：在每个时间步，MPC 构建并求解优化问题，以最小化（通常是二次型的）代价函数，遵循模型动力学和约束条件。

3. **约束处理**：MPC 明确地将控制输入、状态和输出的约束纳入其中，使控制器能够在物理和安全限制内实现最优运行。

4. **滚动时域方法**：仅实施优化序列中的第一个控制动作。在下一个时间步，预测时域前移（滚动），使用更新的信息重复优化。

5. **反馈机制**：MPC 通过在优化中整合近期测量，本质上提供了反馈，提高了对扰动和模型不准确的鲁棒性。

**MPC 领域的经典代表作**

1. **早期发展**：

   - **Richalet, J., Rault, A., Testud, J. L., & Papon, J. (1978). "Model predictive heuristic control: Applications to industrial processes." *Automatica*, 14(5), 413-428.**

     该开创性论文引入了模型预测启发式控制 (MPHC) 的概念，标志着预测控制在工业中实际应用的开端。

   - **Cutler, C. R., & Ramaker, B. L. (1980). "Dynamic matrix control—a computer control algorithm." *Proc. of the Joint Automatic Control Conference*.**

     引入了动态矩阵控制 (DMC)，这是过程工业中广泛采用的 MPC 算法之一。

2. **理论基础**：

   - **Garcia, C. E., Prett, D. M., & Morari, M. (1989). "Model predictive control: Theory and practice—a survey." *Automatica*, 25(3), 335-348.**

     这篇全面的综述论文讨论了 MPC 的理论基础及其实践应用，为未来的研究奠定了基础。

3. **稳定性和鲁棒性**：

   - **Mayne, D. Q., Rawlings, J. B., Rao, C. V., & Scokaert, P. O. M. (2000). "Constrained model predictive control: Stability and optimality." *Automatica*, 36(6), 789-814.**

     这篇有影响力的论文解决了约束 MPC 中的稳定性和最优性关键问题，提供了严格的理论保证。

4. **非线性 MPC**：

   - **Findeisen, R., & Allgöwer, F. (2002). "An introduction to nonlinear model predictive control." *In 21st Benelux Meeting on Systems and Control*.**

     提供了对非线性 MPC 的简明介绍，扩展了 MPC 在具有显著非线性系统中的应用。

5. **显式 MPC**：

   - **Bemporad, A., Morari, M., Dua, V., & Pistikopoulos, E. N. (2002). "The explicit linear quadratic regulator for constrained systems." *Automatica*, 38(1), 3-20.**

     讨论了显式 MPC 解的公式化，对于需要快速实时控制的系统至关重要。

6. **应用和技术转移**：

   - **Qin, S. J., & Badgwell, T. A. (2003). "A survey of industrial model predictive control technology." *Control Engineering Practice*, 11(7), 733-764.**

     调查了 MPC 在工业中的采用情况，强调了实际考虑和 MPC 对工业过程的影响。

7. **鲁棒 MPC**：

   - **Scokaert, P. O. M., & Mayne, D. Q. (1998). "Min-max feedback model predictive control for constrained linear systems." *IEEE Transactions on Automatic Control*, 43(8), 1136-1142.**

     解决了 MPC 中的鲁棒性，提出了处理模型不确定性并确保在扰动下性能的方法。

8. **基于学习的 MPC**：

   - **Koller, T., Berkenkamp, F., Turchetta, M., & Krause, A. (2018). "Learning-based model predictive control for safe exploration and reinforcement learning." *In 2018 IEEE Conference on Decision and Control (CDC)*, 6059-6066.**

     将机器学习与 MPC 相结合，代表了将数据驱动的模型和学习纳入控制的现代趋势。

**结论**

模型预测控制代表了控制理论和实践的重大进展，提供了将优化、预测和控制融合在一个策略中的框架。其系统地考虑未来事件和约束的能力，使其成为控制复杂系统的强大工具。列出的经典作品塑造了 MPC 的发展，解决了理论挑战并扩大了其在各个行业的实际应用。