**Analysis of "Predictive End-Effector Control of Manipulators on Moving Platforms Under Disturbance"**

**Abstract**

This paper introduces a novel predictive end-effector control method for manipulators operating on moving platforms subjected to disturbances causing unwanted base motions. The approach leverages time-series forecasting to predict the base motion using historical state information. By transforming a desired trajectory specified in the inertial frame into a predicted trajectory relative to the manipulator, the method enables the manipulator to counteract the base motion effectively. A model predictive control (MPC) problem is formulated using quadratic programming (QP), where only the first control action is constrained to ensure kinematic feasibility. This allows for rapid solution of the QP with linear inequality constraints. The method is validated through simulations and experiments, demonstrating a reduction in pose error by over 60% compared to conventional proportional–integral (PI) feedback controllers.

**Motivation**

In many applications, such as underwater intervention, aerial manipulation, and mobile manipulation on uneven terrains, manipulators are mounted on moving platforms that are subject to disturbances like waves, wind, or rough terrain. These disturbances can cause unwanted base motion, adversely affecting the manipulator's ability to accurately perform tasks. Traditional feedback control methods may be insufficient to compensate for such disturbances. Therefore, there is a need for control strategies that anticipate base motion and adjust the manipulator's actions accordingly to maintain precise end-effector control.

**Background & Gap**

Previous research on controlling manipulators on moving platforms often assumes minimal disturbances or relies on decoupled control strategies that do not adequately compensate for significant base motion. Some methods incorporate base motion into the control scheme, but they may require extensive modeling or are computationally intensive, especially for manipulators with many degrees of freedom (DOFs). There is a gap in developing a computationally efficient control method that can predict and compensate for disturbances, ensuring precise end-effector control without prohibitive computational overhead.

**Challenge Details**

The main challenges addressed in the paper include:

1. **Predicting Base Motion**: Accurately forecasting the future motion of the moving base in real-time using historical state data, despite the presence of disturbances.
   
2. **Trajectory Transformation**: Transforming the desired end-effector trajectory from the inertial frame to the manipulator's frame, accounting for predicted base motion.

3. **Computational Efficiency**: Formulating the MPC problem in a way that avoids the computational complexity associated with high-DOF manipulators, enabling real-time implementation.

4. **Kinematic Feasibility**: Ensuring that the manipulator's control actions are kinematically feasible, particularly when only the first control action is constrained.

5. **Robustness and Stability**: Maintaining control performance even when future predicted control actions may be infeasible due to modeling inaccuracies or abrupt disturbances.

**Novelty**

The key novelties of this paper are:

- **Prediction-Based Compensation**: Utilizing time-series forecasting to predict base motions and transforming the control problem accordingly.
  
- **Efficient MPC Formulation**: Proposing an MPC problem formulated via QP where only the first control action is constrained by kinematic feasibility, reducing computational complexity.

- **Task-Space Control**: Expressing the control problem in the task space instead of the joint space, circumventing the need for analytical forward kinematics and Jacobians, which can be complex for high-DOF manipulators.

- **Feasibility Despite Future Infeasibility**: Demonstrating that tracking error can be reduced even when future control actions in the prediction horizon are infeasible, provided that the first control action is feasible.

**Algorithm and Method**

1. **Base Motion Prediction**: 

   - **Time-Series Forecasting**: Using an autoregressive (AR) model to predict future positions and orientations of the base based on historical data. Specifically, an AR model of order \( p \) predicts the future state as a weighted sum of \( p \) past observations.

     \[
     y(t) = \sum_{i=1}^{p} \alpha_i y(t - i)
     \]

     - Here, \( y(t) \) represents the state variable at time \( t \), and \( \alpha_i \) are the model coefficients optimized using linear least squares.

2. **Trajectory Transformation**:

   - The desired end-effector pose in the inertial frame is transformed to the manipulator's predicted base frame using the predicted base pose at future time steps:

     \[
     \hat{T}^D_B(t + i) = \hat{T}^I_B(t + i) T^D_I(t + i)
     \]

     - \( \hat{T}^D_B(t + i) \): Predicted desired end-effector pose relative to the base.
     - \( \hat{T}^I_B(t + i) \): Predicted transformation from the inertial frame to the base frame.

3. **MPC Problem Formulation**:

   - **Error Propagation**: The error between the current end-effector position and the desired future positions is defined and propagated over the prediction horizon.

     \[
     \hat{e}_p(t + i) = \hat{p}^D_B(t + i) - p^E_B(t)
     \]

   - **Cost Function**: A convex cost function is constructed to minimize the tracking error and smooth control actions:

     \[
     \min_u \left\| \hat{e} - A u \right\|_G^2 + \left\| u_0 - B u \right\|_Q^2
     \]

     - \( A \): Matrix that relates control actions to error propagation.
     - \( u \): Control actions (end-effector velocities) over the prediction horizon.
     - \( u_0 \): Previous control action.
     - \( G \) and \( Q \): Positive-definite weighting matrices.

   - **Constraints**:

     - Only the first control action is constrained by kinematic feasibility:

       \[
       q_L(t) \leq J^\dagger(q(t)) x'(t) \leq q_U(t)
       \]

       - \( J^\dagger(q(t)) \): Pseudoinverse of the Jacobian at the current joint state.
       - \( x'(t) \): First control action (end-effector velocity).
       - \( q_L(t) \), \( q_U(t) \): Lower and upper bounds of joint velocities.

4. **Solution via Quadratic Programming**:

   - The optimization problem is a QP with linear inequality constraints, which can be solved efficiently.
   - Since only the first control action is constrained, future infeasible control actions do not affect system stability because only the first action is executed, and future actions are recalculated in the next control loop.

5. **Control Implementation**:

   - The computed control action is applied to the manipulator using resolved-rate control, i.e., computing joint velocities from end-effector velocities:

     \[
     \dot{q}_d = J^\dagger \dot{x}
     \]

   - A joint control law ensures that the desired joint velocities are tracked, compensating for dynamic effects such as inertia, Coriolis, and gravitational forces.

**Mathematical Derivations**

1. **Base Motion Prediction - Autoregressive Model**:

   - The AR model predicts future base states based on past observations.

     - Basic form:

       \[
       y(t) = \alpha_1 y(t - 1) + \alpha_2 y(t - 2) + \dots + \alpha_p y(t - p)
       \]

     - Coefficients \( \alpha_i \) are determined by minimizing the prediction error over a window of past data.

2. **Error Dynamics and Propagation**:

   - Error between predicted desired pose and current pose:

     \[
     \hat{e}(t + i) = \hat{p}^D_B(t + i) - p^E_B(t) - \Delta t \sum_{j=0}^{i-1} v(t + j)
     \]

     - \( v(t + j) \): Control action (end-effector velocity) at future steps.

3. **Cost Function Construction**:

   - The cost function includes terms for tracking error and control action smoothing.

     \[
     \min_u \left( \left\| \hat{e} - A u \right\|^2 + \left\| u_0 - B u \right\|^2 \right)
     \]

     - Matrices \( A \) and \( B \) are constructed to relate control actions to error over the prediction horizon.

4. **Quadratic Programming Solution**:

   - The optimization problem is quadratic in \( u \) and subject to linear constraints.

     - General form:

       \[
       \min_u \frac{1}{2} u^T H u + f^T u
       \]
       
       \[
       \text{subject to: } C u \leq d
       \]

     - \( H \): Hessian matrix (from the cost function).
     - \( f \): Gradient vector.
     - \( C \): Constraint matrix (from kinematic constraints).
     - \( d \): Constraint bounds.

**Possible Future Extensions**

- **Dynamic-Level Control**: Extending the control formulation to acceleration-level or dynamic control, incorporating manipulator dynamics more comprehensively.

- **Inclusion of Base-Manipulator Interaction**: Modeling the inertial coupling between the manipulator and the base, especially for systems where manipulator motion significantly affects the base.

- **Adaptive Prediction Models**: Employing machine learning techniques or adaptive filters to improve base motion prediction under varying disturbance conditions.

- **Nonlinear MPC**: Developing nonlinear MPC formulations to handle larger disturbances and nonlinearities in manipulator dynamics.

- **Obstacle Avoidance**: Incorporating constraints for obstacle avoidance in the MPC formulation to enable safe operation in cluttered environments.

**Conclusion & Achievement**

The paper presents an effective and computationally efficient predictive control method for manipulators on moving platforms under disturbance. By forecasting base motion using time-series analysis and transforming the desired trajectory accordingly, the manipulator can proactively counteract unwanted base motions. The innovative MPC formulation allows for quick computation by constraining only the first control action, ensuring kinematic feasibility without the computational burden of constraining the entire prediction horizon. Simulations and experimental results validate the method, showing significant improvements in end-effector tracking accuracy compared to conventional feedback controllers. This work advances the field of mobile manipulation by providing a practical solution to maintain precise control in dynamic and uncertain environments.

---

**《在扰动下移动平台上机械臂的预测末端执行器控制》分析**

**摘要**

本文提出了一种新颖的预测末端执行器控制方法，适用于在受到基座不期望运动扰动的移动平台上运行的机械臂。该方法利用时间序列预测，使用历史状态信息来预测基座运动。通过将惯性坐标系中指定的期望轨迹转换为相对于机械臂的预测轨迹，该方法使机械臂能够有效地抵消基座运动。通过二次规划（QP）公式化模型预测控制（MPC）问题，其中仅对第一个控制动作施加了运动学可行性的约束。这允许以线性不等式约束快速求解QP问题。通过仿真和实验验证了该方法，与传统的比例积分（PI）反馈控制器相比，姿态误差减少了60%以上。

**动机**

在许多应用中，如水下干预、空中操作以及不平坦地形上的移动操作，机械臂安装在受到波浪、风或崎岖地形等扰动的移动平台上。这些扰动会引起不期望的基座运动，严重影响机械臂精确执行任务的能力。传统的反馈控制方法可能不足以补偿此类扰动。因此，需要一种控制策略，能够预测基座运动并相应地调整机械臂的动作，以保持精确的末端执行器控制。

**背景与差距**

以前关于移动平台上机械臂控制的研究通常假设扰动较小，或依赖于分离的控制策略，不能充分补偿显著的基座运动。一些方法将基座运动纳入控制方案，但可能需要大量的建模，或者对于高自由度（DOF）的机械臂而言计算量过大。当前存在一个差距，即如何开发一种计算效率高的控制方法，能够预测和补偿扰动，确保精确的末端执行器控制，同时不产生过高的计算开销。

**挑战细节**

论文中解决的主要挑战包括：

1. **预测基座运动**：利用历史状态数据实时准确地预测移动基座的未来运动，即使在存在扰动的情况下。

2. **轨迹转换**：将惯性坐标系中的期望末端执行器轨迹转换为机械臂参考系下的预测轨迹，考虑预测的基座运动。

3. **计算效率**：以避免高自由度机械臂相关的计算复杂度的方式，公式化MPC问题，实现实时控制。

4. **运动学可行性**：确保机械臂的控制动作在运动学上是可行的，特别是在仅对第一个控制动作施加约束的情况下。

5. **鲁棒性和稳定性**：即使未来预测的控制动作由于建模不准确或突发扰动可能不可行，也要保持控制性能。

**新颖性**

该论文的主要创新点包括：

- **基于预测的补偿**：利用时间序列预测基座运动，并相应地转换控制问题。

- **高效的MPC公式化**：提出了通过QP公式化的MPC问题，其中仅对第一个控制动作施加运动学可行性约束，降低了计算复杂度。

- **任务空间控制**：将控制问题表达在任务空间，而非关节空间，避免了对高自由度机械臂复杂的解析正运动学和雅可比矩阵的需求。

- **即使未来不可行也能实现可行性**：证明了即使预测控制范围内的未来控制动作可能不可行，只要第一个控制动作可行，仍然可以减少跟踪误差。

**算法与方法**

1. **基座运动预测**：

   - **时间序列预测**：使用自回归（AR）模型，根据历史数据预测基座的未来位置和姿态。具体地，阶数为 \( p \) 的AR模型将未来状态表示为过去 \( p \) 个观测值的加权和。

     \[
     y(t) = \sum_{i=1}^{p} \alpha_i y(t - i)
     \]

     - 其中，\( y(t) \) 表示时间 \( t \) 的状态变量，\( \alpha_i \) 是通过线性最小二乘法确定的模型系数。

2. **轨迹转换**：

   - 将惯性坐标系中的期望末端执行器位姿转换为机械臂的预测基座坐标系下：

     \[
     \hat{T}^D_B(t + i) = \hat{T}^I_B(t + i) T^D_I(t + i)
     \]

     - \( \hat{T}^D_B(t + i) \)：第 \( i \) 个时间步相对于基座的预测期望末端执行器位姿。
     - \( \hat{T}^I_B(t + i) \)：第 \( i \) 个时间步惯性坐标系到基座坐标系的预测转换。

3. **MPC问题公式化**：

   - **误差传播**：定义当前末端执行器位置与预测的未来期望位置之间的误差，并在预测范围内进行传播。

     \[
     \hat{e}_p(t + i) = \hat{p}^D_B(t + i) - p^E_B(t)
     \]

   - **代价函数**：构建一个凸二次代价函数，用于最小化跟踪误差并平滑控制动作。

     \[
     \min_u \left\| \hat{e} - A u \right\|_G^2 + \left\| u_0 - B u \right\|_Q^2
     \]

     - \( A \)：将控制动作与误差传播相关联的矩阵。
     - \( u \)：在预测范围内的控制动作（末端执行器速度）。
     - \( u_0 \)：上一次的控制动作。
     - \( G \) 和 \( Q \)：正定的权重矩阵。

   - **约束条件**：

     - 仅对第一个控制动作施加运动学可行性约束：

       \[
       q_L(t) \leq J^\dagger(q(t)) x'(t) \leq q_U(t)
       \]

       - \( J^\dagger(q(t)) \)：当前关节状态下的雅可比矩阵的伪逆。
       - \( x'(t) \)：第一个控制动作（末端执行器速度）。
       - \( q_L(t) \)、\( q_U(t) \)：关节速度的下限和上限。

4. **通过二次规划求解**：

   - 优化问题为具有线性不等式约束的QP问题，可以高效地求解。
   - 由于仅对第一个控制动作施加约束，未来不可行的控制动作不会影响系统稳定性，因为每次只执行第一个动作，未来动作在下一次控制循环中重新计算。

5. **控制实施**：

   - 计算的控制动作通过求解速度级控制应用于机械臂，即从末端执行器速度计算关节速度：

     \[
     \dot{q}_d = J^\dagger \dot{x}
     \]

   - 关节控制律确保期望的关节速度得以实现，并补偿如惯性、科里奥利力和重力等动态效应。

**数学推导**

1. **基座运动预测 - 自回归模型**：

   - AR模型基于过去的观测值预测未来的基座状态。

     - 基本形式：

       \[
       y(t) = \alpha_1 y(t - 1) + \alpha_2 y(t - 2) + \dots + \alpha_p y(t - p)
       \]

     - 系数 \( \alpha_i \) 通过最小化过去数据的预测误差确定。

2. **误差动态与传播**：

   - 预测的期望位姿与当前位姿之间的误差：

     \[
     \hat{e}(t + i) = \hat{p}^D_B(t + i) - p^E_B(t) - \Delta t \sum_{j=0}^{i-1} v(t + j)
     \]

     - \( v(t + j) \)：未来步长的控制动作（末端执行器速度）。

3. **代价函数构建**：

   - 代价函数包含跟踪误差和控制动作平滑的项。

     \[
     \min_u \left( \left\| \hat{e} - A u \right\|^2 + \left\| u_0 - B u \right\|^2 \right)
     \]

     - 矩阵 \( A \) 和 \( B \) 构建了控制动作与预测范围内误差之间的关系。

4. **二次规划解法**：

   - 优化问题在 \( u \) 上是二次的，并受线性约束。

     - 一般形式：

       \[
       \min_u \frac{1}{2} u^T H u + f^T u
       \]

       \[
       \text{subject to: } C u \leq d
       \]

     - \( H \)：海森矩阵（来自代价函数）。
     - \( f \)：梯度向量。
     - \( C \)：约束矩阵（来自运动学约束）。
     - \( d \)：约束边界。

**可能的拓展思路**

- **动态级控制**：将控制公式化扩展到加速度级或动态控制，更全面地包含机械臂的动力学。

- **包含基座与机械臂的相互作用**：对基座和机械臂之间的惯性耦合建模，特别是对于机械臂运动对基座有显著影响的系统。

- **自适应预测模型**：采用机器学习技术或自适应滤波器，在不同的扰动条件下改进基座运动预测。

- **非线性MPC**：开发非线性MPC公式化，以处理更大的扰动和机械臂动力学中的非线性。

- **障碍物避让**：在MPC公式化中加入避障约束，以实现在复杂环境中的安全操作。

**结论与成果**

本文提出了一种有效且计算效率高的预测控制方法，适用于在扰动下移动平台上的机械臂。通过使用时间序列分析预测基座运动并相应地转换期望轨迹，机械臂可以主动抵消不期望的基座运动。创新的MPC公式化仅对第一个控制动作施加约束，确保运动学可行性，同时避免了对整个预测范围施加约束所带来的计算负担。仿真和实验结果验证了该方法，相较于传统的反馈控制器，末端执行器的跟踪精度有了显著提高。该工作通过在动态和不确定的环境中提供一种实用的解决方案，推进了移动操作领域的发展。