**1. Code Explanation Line by Line**

Let's go through the MATLAB code step by step to understand its functionality.

---

```matlab
% Initiation part of the code
close all; clear; clc;
```

- **Explanation**: Closes all open figure windows, clears all variables from the workspace, and clears the command
  window. This ensures a clean environment before the script runs.

---

```matlab
% add dependency
addpath vrep_lib/;
```

- **Explanation**: Adds the directory `vrep_lib/` to the MATLAB search path. This directory should contain the necessary
  libraries or functions required to interface with CoppeliaSim (formerly V-REP).

---

```matlab
% robot init
h = figure(1);
a = 1;
robot = loadrobot('kukaIiwa14', 'DataFormat', 'column', 'Gravity', [0 0 -9.81]);
```

- **Explanation**:
    - `h = figure(1);`: Creates a new figure window with identifier `1` and stores the handle in variable `h`.
    - `a = 1;`: Initializes variable `a` to `1`. This variable is not used later in the script.
    - `robot = loadrobot('kukaIiwa14',...)`: Loads the KUKA iiwa 14 robot model from the Robotics System Toolbox. The
      data format is set to column vectors, and gravity is defined along the negative Z-axis.

---

```matlab
% set joint position limitation
q_max = [170; 120; 170; 120; 170; 120; 175] * pi / 180;
dq_max = [85; 85; 100; 75; 130; 130; 135] * pi / 180;
```

- **Explanation**: Defines the maximum joint positions (`q_max`) and maximum joint velocities (`dq_max`) for each of the
  seven robot joints, converting degrees to radians.

---

```matlab
% Initial Pose
q_initial = [0; 45; 0; -90; 0; 45; 0] * pi / 180;
```

- **Explanation**: Sets the initial joint positions (`q_initial`) in radians for the robot to achieve before starting
  the control loop.

---

```matlab
% Current Pose Init
q_cur = zeros(7, 1);
```

- **Explanation**: Initializes the current joint positions (`q_cur`) as a zero vector. This may represent the starting
  point before any movement.

---

```matlab
% Relative velocity
re_vel = 1 * pi / 180; % 1 deg/s
Ts = 0.005;
q_all = [];
```

- **Explanation**:
    - `re_vel`: Sets the relative velocity to 1 degree per second, converted to radians per second.
    - `Ts`: Defines the sampling time or time step (`Ts`) for the control loop as 5 milliseconds.
    - `q_all`: Initializes an empty array to store joint positions over time.

---

```matlab
% Create Remote API client
client = RemoteAPIClient();
sim = client.require('sim');
```

- **Explanation**:
    - Initializes a remote API client to communicate with CoppeliaSim.
    - Retrieves the simulation object (`sim`) to access simulation functionalities.

---

```matlab
% Run a simulation(in stepping mode)
sim.setStepping(true);

% Start simulation
sim.startSimulation();

fprintf('Program start\n');
pause(0.5);
```

- **Explanation**:
    - Sets the simulation to stepping mode, allowing manual control over each simulation step.
    - Starts the simulation in CoppeliaSim.
    - Prints "Program start" to the console and pauses for half a second to ensure the simulation initializes properly.

---

**Main Loop: Establishing Connection and Moving to Initial Pose**

```matlab
%%%%%%%%%%%%%% Main Loop %%%%%%%%%%%%%%%%%%%
while 1
    try
        t = sim.getSimulationTime();
        disp('Connected to remote API server');
        ...
    catch
        disp('Lost connection to CoppeliaSim.');
        break;
    end
    ...
end
```

- **Explanation**:
    - Begins an infinite loop intended to manage the simulation and control tasks.
    - Uses a `try...catch` block to attempt communication with the simulation and handle exceptions, such as connection
      loss.
    - Checks the simulation time to confirm the connection.

**Retrieving Handles and Initial Joint Positions**

```matlab
% Get robot joint handles and sensor handle
robot_joints = get_handle_Joint(sim);
handle_sensoree = get_ee_handle(sim);

% Get initial joint positions
q_f = get_joint_target_position(sim, robot_joints);
pause(1);
flag = ones(7, 1);
```

- **Explanation**:
    - Calls functions to retrieve handles for the robot joints (`robot_joints`) and the end-effector force sensor (
      `handle_sensoree`).
    - Retrieves the current joint positions (`q_f`).
    - Pauses for one second to ensure data retrieval is complete.
    - Initializes a `flag` vector to control the movement towards the initial pose.

---

**Moving to the Initial Pose**

```matlab
% move to the initial pose
while (max(flag) == 1)
    for i = 1:7
        if (q_f(i) ~= q_initial(i))
            flag(i) = 1;
            if (abs(q_f(i) - q_initial(i)) > re_vel)
                q_f(i) = q_f(i) + sign(q_initial(i) - q_f(i)) * re_vel;
            else
                q_f(i) = q_initial(i);
            end
        else
            flag(i) = 0;
        end
    end
    set_joint_target_position(sim, robot_joints, q_f);
    sim.step();
end
pause(0.5);
```

- **Explanation**:
    - Enters a loop to incrementally adjust each joint position towards the desired initial pose (`q_initial`).
    - If the difference between the current and desired positions is greater than `re_vel`, it moves the joint by
      `re_vel` in the appropriate direction.
    - Continues this process until the robot reaches the initial pose.
    - Uses `sim.step()` to advance the simulation by one time step in stepping mode.

---

**Controller Initialization**

```matlab
% Controller initialization
q_f = get_joint_target_position(sim, robot_joints);
T_0 = getTransform(robot, q_f, 'iiwa_link_ee_kuka');
...
loop_rate = rateControl(1 / Ts); % define timer loop
reset(loop_rate); % reset timer loop
```

- **Explanation**:
    - Updates `q_f` with the latest joint positions.
    - Obtains the end-effector's initial transformation matrix (`T_0`) using robot kinematics.
    - Initializes variables such as `k` (loop counter), `dt` (time difference), and timing functions to control the loop
      rate according to the sampling time `Ts`.

---

**Control Loop**

```matlab
while 1
    % Stepping mode
    time = toc;
    dt = time - t0;
    ...
end
```

- **Explanation**:
    - Starts the main control loop, which will run continuously until manually stopped.
    - Calculates the elapsed time `dt` since the start of the control loop to compute the desired trajectory points.

**Checking for User Input**

```matlab
drawnow
val_0 = double(get(h, 'CurrentCharacter'));
if (val_0 == 98) % press 'b' to stop
    break
end
```

- **Explanation**:
    - Calls `drawnow` to update figure window events.
    - Reads the character input from the figure window.
    - If the user presses the 'b' key (ASCII code 98), the loop is broken, effectively stopping the control process.

---

**Low-Level Controller Operations**

```matlab
% receive feedback data
q_f = get_joint_target_position(sim, robot_joints); % q feedback
T_f = getTransform(robot, q_f, 'iiwa_link_ee_kuka'); % ee pose
rot_fb = T_f(1:3, 1:3); % Rotation matrix of end-effector
[ee_force, ee_torque] = get_ee_force(sim, handle_sensoree); % read ee force sensor
t_joint = get_joint_force(sim, robot_joints); % read joint force sensor
```

- **Explanation**:
    - Retrieves the current joint positions and end-effector pose.
    - Extracts the rotation matrix from the transformation matrix.
    - Reads the force and torque from the end-effector sensor.
    - Reads the joint forces (torques) from the robot joints.

---

**Defining the Desired Trajectory**

```matlab
% set target (draw circle)
x_d = 1 * 0.15 * sin(2 * pi * dt / 60) + T_0(1, 4);
y_d = 1 * 0.15 * (1 - cos(2 * pi * dt / 60)) + T_0(2, 4);
z_d = T_0(3, 4);
p_d = [x_d; y_d; z_d]; % desired ee position
pd_all(k, :) = p_d';
```

- **Explanation**:
    - Computes the desired end-effector position (`p_d`) to follow a circular trajectory in the XY-plane with a radius
      of 0.15 meters.
    - The trajectory is time-dependent and completes one full circle every 60 seconds.
    - Stores the desired positions for analysis or plotting.

---

**Calculating Orientation and Errors**

```matlab
o_d = rotm2quat(T_0(1:3, 1:3)); % desired ee orientation in quaternion
o_d_eul = quat2eul(o_d);
o_d_eul(3) = o_d_eul(3) - 0; % No change in orientation in this case
rot_bd = eul2rotm(o_d_eul);
```

- **Explanation**:
    - Converts the initial rotation matrix to a quaternion representation (`o_d`).
    - Converts the quaternion to Euler angles (`o_d_eul`) for potential modification.
    - In this code, the desired orientation remains constant.
    - Converts modified Euler angles back to a rotation matrix (`rot_bd`).

---

**Computing Control Errors**

```matlab
tran_err = T_f(1:3, 4) - p_d; % Translation error
rot_err = rot_bd' * rot_fb; % Rotation error matrix
quat_err = rotm2quat(rot_err)'; % Quaternion error
quatv_err = quat_err(2:4);
quats_err = quat_err(1);
rotv_err = quats_err * rot_bd * quatv_err; % Rotational velocity error

err_df = [tran_err; rotv_err]; % Combined error vector
```

- **Explanation**:
    - Calculates the difference between the current and desired end-effector positions.
    - Computes the rotation error between the desired and current orientations.
    - Converts the rotation error matrix to a quaternion to extract the rotational error.
    - Forms the combined error vector comprising translation and rotational components.

---

**Computing Joint Velocities and Applying Limitations**

```matlab
jacob_m = geometricJacobian(robot, q_f, 'iiwa_link_ee_kuka'); % get Jacobian
Jac_g = [jacob_m(4:6, :); jacob_m(1:3, :)]; % Reorder Jacobian
Km = 2 * diag([50 50 50 30 30 30]); % Gain matrix
dqd = -pinv(Jac_g) * Km * err_df; % Compute joint velocities
```

- **Explanation**:
    - Computes the geometric Jacobian matrix for the robot at the current joint positions.
    - Reorders the Jacobian to match the error vector structure.
    - Defines a gain matrix (`Km`) to scale the errors.
    - Calculates the required joint velocities (`dqd`) to reduce the errors using inverse kinematics.

---

```matlab
% set limitation
dqd1 = LimitJointState(dqd, 1 * dq_max);
% get joint position command
q_comm = q_f + dqd1 * Ts;
```

- **Explanation**:
    - Calls `LimitJointState` to ensure the joint velocities do not exceed defined limits.
    - Computes the commanded joint positions (`q_comm`) by integrating the velocities over the sampling time `Ts`.

---

**Updating Simulation and Data Logging**

```matlab
err_all(:, k) = err_df;
set_joint_target_position(sim, robot_joints, q_comm);
q_all(:, k) = q_f;
k = k + 1;
sim.step(); % Advance simulation
waitfor(loop_rate); % Maintain loop rate
```

- **Explanation**:
    - Logs the error values for analysis.
    - Sends the new joint positions to the simulation.
    - Logs the joint positions over time.
    - Advances the simulation by one step.
    - Waits to synchronize the loop according to the sampling time `Ts`.

---

**Handling Exceptions and Stopping the Simulation**

```matlab
catch
    disp('Lost connection to CoppeliaSim.');
    break;
end

% Stop simulation
sim.stopSimulation();
fprintf('Program ended\n');
```

- **Explanation**:
    - If an exception occurs (e.g., loss of connection), the program displays a message and exits the loop.
    - Stops the simulation in CoppeliaSim and prints a termination message.

---

**Plotting Joint Positions**

```matlab
% Graph constructor
figure(1);
clf
hold on
numRows = size(q_all, 1);

for i = 1:min(7, numRows)
    plot(1:size(q_all, 2), q_all(i, :));
end

grid on
box on
hold off;
```

- **Explanation**:
    - Clears the figure window and prepares for plotting.
    - Loops through each joint and plots its position over time.
    - Adds gridlines and a box around the plot for better visualization.

---

**Auxiliary Functions**

- **`get_handle_Joint(sim)`**: Retrieves the handles of the robot joints from the simulation.
- **`get_ee_handle(sim)`**: Retrieves the handle of the end-effector's force sensor.
- **`get_ee_force(sim, handle_sensor)`**: Reads the force and torque values from the end-effector's force sensor.
- **`get_joint_force(sim, handle_joint)`**: Reads the force (torque) applied to each joint.
- **`set_joint_target_position(sim, handle_joint, q)`**: Sets the target positions for the robot's joints in the
  simulation.
- **`get_joint_target_position(sim, handle_joint)`**: Retrieves the current positions of the robot's joints.
- **`LimitJointState(dq_in, dqm)`**: Limits the joint velocities (`dq_in`) to the specified maximum velocities (`dqm`).

---

**2. Making the Figure Work and Drawing High-Quality Figures**

To produce high-quality figures suitable for top-tier publications like **Nature**, follow these guidelines:

- **Increase Line Width and Font Sizes**:
    - Use thicker lines for plots to enhance visibility.
    - Set larger font sizes for labels, titles, and legends.

- **Enhance Plot Appearance**:
    - Use distinct colors for different data series.
    - Apply consistent styling across all figures.

- **Add Annotations and Labels**:
    - Include axis labels with units.
    - Add a descriptive title to the figure.
    - Provide a legend to distinguish between different joints or data series.

- **Export with High Resolution**:
    - Save the figure in high-resolution formats like PDF, EPS, or TIFF.
    - Use higher DPI settings (e.g., 300 DPI or higher).

- **Example Code to Improve Figure Quality**:

```matlab
% Improved graph constructor
figure(1);
clf;
hold on;
numRows = size(q_all, 1);
timeSteps = (1:size(q_all, 2)) * Ts; % Convert indices to time values

% Define a color palette
colors = lines(7);

% Plot each joint with improved settings
for i = 1:min(7, numRows)
    plot(timeSteps, q_all(i, :), 'LineWidth', 2, 'Color', colors(i, :));
end

% Set plot labels and title
xlabel('Time (s)', 'FontSize', 14);
ylabel('Joint Position (rad)', 'FontSize', 14);
title('KUKA iiwa Joint Positions Over Time', 'FontSize', 16);

% Configure axes properties
set(gca, 'FontSize', 12);
grid on;
box on;

% Add legend
legendLabels = arrayfun(@(n) sprintf('Joint %d', n), 1:7, 'UniformOutput', false);
legend(legendLabels, 'Location', 'bestoutside', 'FontSize', 12);

hold off;

% Save the figure with high resolution
print('KUKA_Joint_Positions', '-dpdf', '-r300'); % Saves as PDF with 300 DPI resolution
```

**Tips**:

- Use MATLAB's built-in `exportgraphics` or `saveas` functions to save figures in high-quality formats.
- Ensure that all text in the figure is legible when resized or printed.
- Consider the colorblind-friendly palette when selecting colors.

---

**3. Applying MPC Algorithm into MATLAB Code (Including a Moving UAV)**

To integrate a Model Predictive Control (MPC) algorithm into your MATLAB code for controlling the robot in the presence
of a moving object like a UAV, follow these steps:

**Step 1: Define the System Model**

- **Robot Dynamics**:
    - Create a state-space model of the robot including its kinematics and dynamics.
    - For instance, define the state vector to include joint positions and velocities.

- **Moving Object (UAV) Model**:
    - Model the UAV's motion if it affects the robot's operation.
    - This could be a known trajectory or include uncertainties.

**Step 2: Set Up the MPC Controller**

- **Design the MPC**:
    - Use the MPC Toolbox in MATLAB:
      ```matlab
      % Define the plant model (state-space representation)
      plant = ss(A, B, C, D, Ts);
  
      % Create the MPC controller
      mpcController = mpc(plant, Ts, PredictionHorizon, ControlHorizon);
      ```
    - `A`, `B`, `C`, `D` are matrices defining the robot's dynamics.
    - `PredictionHorizon` and `ControlHorizon` are integers defining the horizons.

- **Constraints and Weights**:
    - Define constraints on the inputs (joint velocities) and outputs (positions).
    - Set weights to balance tracking performance and control effort.

**Step 3: Integrate MPC into the Control Loop**

- **Replace the Existing Controller**:
    - In your control loop, replace the inverse kinematics controller with the MPC:
      ```matlab
      % Current state
      x = [q_f; dq_f];
  
      % Compute the control action using MPC
      u = mpcmove(mpcController, x, x_ref, [], []);
  
      % Update joint positions
      q_comm = q_f + u * Ts;
      ```
    - `x_ref` is the reference state, which includes the desired joint positions and velocities.
    - Ensure that the MPC controller is computed within the time constraints of the control loop.

**Step 4: Include the Moving Object in the MPC**

- **Obstacle Avoidance**:
    - Incorporate the UAV's trajectory into the MPC's prediction model.
    - Add constraints to prevent collisions:
        - Define safety zones around the UAV.
        - Use constraint functions within the MPC to avoid these zones.

- **Adaptive Reference Trajectory**:
    - Modify the desired trajectory based on the UAV's position to achieve dynamic avoidance.

**Step 5: Simulation and Validation**

- **Test the Augmented System**:
    - Run simulations to validate the MPC performance.
    - Use scenarios where the UAV moves in different patterns.

- **Performance Tuning**:
    - Adjust the prediction and control horizons.
    - Tune the weights for inputs and outputs to balance responsiveness and smoothness.

**Additional Resources**

- **MPC Toolbox Documentation**: Provides detailed explanations and examples.
- **Robotics System Toolbox Examples**: Include applications of MPC in robotic systems.
- **Collision Avoidance Examples**: Explore examples that demonstrate obstacle avoidance using MPC.

---

**Important Considerations**

- **Computational Load**: MPC algorithms can be computationally intensive. Ensure that your control loop can run in
  real-time.
- **Model Accuracy**: The effectiveness of MPC depends on the accuracy of the system model. Include all relevant
  dynamics.
- **Safety Constraints**: Carefully define constraints to ensure safety, especially when dealing with moving objects.

---

**Complete Answer Translation into Chinese**

**1. 逐行解释代码**

让我们逐步解析这段MATLAB代码，了解其功能。

---

```matlab
% 代码的初始化部分
close all; clear; clc;
```

- **解释**：关闭所有打开的图形窗口，清除工作区中的所有变量，并清除命令窗口。这确保了脚本运行前拥有一个干净的环境。

---

```matlab
% 添加依赖项
addpath vrep_lib/;
```

- **解释**：将目录`vrep_lib/`添加到MATLAB的搜索路径。这一目录应包含与CoppeliaSim（以前称为V-REP）交互所需的库或函数。

---

```matlab
% 机器人初始化
h = figure(1);
a = 1;
robot = loadrobot('kukaIiwa14', 'DataFormat', 'column', 'Gravity', [0 0 -9.81]);
```

- **解释**：
    - `h = figure(1);`：创建一个标识符为`1`的新图形窗口，并将句柄存储在变量`h`中。
    - `a = 1;`：将变量`a`初始化为`1`。该变量在脚本后续部分未被使用。
    - `robot = loadrobot('kukaIiwa14',...)`：从机器人系统工具箱中加载KUKA iiwa 14机器人模型。数据格式设置为列向量，重力方向定义为负Z轴。

---

```matlab
% 设置关节位置限制
q_max = [170; 120; 170; 120; 170; 120; 175] * pi / 180;
dq_max = [85; 85; 100; 75; 130; 130; 135] * pi / 180;
```

- **解释**：定义每个七轴机器人关节的最大关节位置`(q_max)`和最大关节速度`(dq_max)`，将度数转换为弧度。

---

```matlab
% 初始姿态
q_initial = [0; 45; 0; -90; 0; 45; 0] * pi / 180;
```

- **解释**：设置机器人在开始控制循环前应达到的初始关节位置`(q_initial)`，单位为弧度。

---

```matlab
% 当前姿态初始化
q_cur = zeros(7, 1);
```

- **解释**：将当前关节位置`(q_cur)`初始化为零向量。这可能表示任何运动之前的起始点。

---

```matlab
% 相对速度
re_vel = 1 * pi / 180; % 1 度/秒
Ts = 0.005;
q_all = [];
```

- **解释**：
    - `re_vel`：将相对速度设置为每秒1度，转换为弧度每秒。
    - `Ts`：将控制循环的采样时间或时间步长`(Ts)`定义为5毫秒。
    - `q_all`：初始化一个空数组，用于存储关节位置随时间的变化。

---

```matlab
% 创建远程API客户端
client = RemoteAPIClient();
sim = client.require('sim');
```

- **解释**：
    - 初始化一个远程API客户端，与CoppeliaSim通信。
    - 获取模拟对象`(sim)`，以访问模拟功能。

---

```matlab
% 以步进模式运行模拟
sim.setStepping(true);

% 启动模拟
sim.startSimulation();

fprintf('Program start\n');
pause(0.5);
```

- **解释**：
    - 将模拟设置为步进模式，允许对每个模拟步骤进行手动控制。
    - 在CoppeliaSim中启动模拟。
    - 向控制台打印“Program start”，并暂停半秒，以确保模拟正确初始化。

---

**主循环：建立连接并移动到初始姿态**

```matlab
%%%%%%%%%%%%%% 主循环 %%%%%%%%%%%%%%%%%%%
while 1
    try
        t = sim.getSimulationTime();
        disp('Connected to remote API server');
        ...
    catch
        disp('Lost connection to CoppeliaSim.');
        break;
    end
    ...
end
```

- **解释**：
    - 开始一个无限循环，旨在管理模拟和控制任务。
    - 使用`try...catch`块尝试与模拟进行通信，并处理异常，例如连接丢失。
    - 检查模拟时间以确认连接。

**获取句柄和初始关节位置**

```matlab
% 获取机器人关节句柄和传感器句柄
robot_joints = get_handle_Joint(sim);
handle_sensoree = get_ee_handle(sim);

% 获取初始关节位置
q_f = get_joint_target_position(sim, robot_joints);
pause(1);
flag = ones(7, 1);
```

- **解释**：
    - 调用函数获取机器人关节`(robot_joints)`和末端执行器力传感器`(handle_sensoree)`的句柄。
    - 获取当前的关节位置`(q_f)`。
    - 暂停一秒以确保数据检索完成。
    - 初始化一个`flag`向量，以控制向初始姿态的移动。

---

**移动到初始姿态**

```matlab
% 移动到初始姿态
while (max(flag) == 1)
    for i = 1:7
        if (q_f(i) ~= q_initial(i))
            flag(i) = 1;
            if (abs(q_f(i) - q_initial(i)) > re_vel)
                q_f(i) = q_f(i) + sign(q_initial(i) - q_f(i)) * re_vel;
            else
                q_f(i) = q_initial(i);
            end
        else
            flag(i) = 0;
        end
    end
    set_joint_target_position(sim, robot_joints, q_f);
    sim.step();
end
pause(0.5);
```

- **解释**：
    - 进入一个循环，逐步调整每个关节位置，朝着所需的初始姿态`(q_initial)`移动。
    - 如果当前位置与期望位置的差值大于`re_vel`，则以合适的方向移动关节`re_vel`。
    - 持续此过程，直到机器人达到初始姿态。
    - 使用`sim.step()`在步进模式下推进模拟一个时间步。

---

**控制器初始化**

```matlab
% 控制器初始化
q_f = get_joint_target_position(sim, robot_joints);
T_0 = getTransform(robot, q_f, 'iiwa_link_ee_kuka');
...
loop_rate = rateControl(1 / Ts); % 定义定时器循环
reset(loop_rate); % 重置定时器循环
```

- **解释**：
    - 使用最新的关节位置更新`q_f`。
    - 使用机器人运动学获取末端执行器的初始变换矩阵`(T_0)`。
    - 初始化变量，如`k`（循环计数器）、`dt`（时间差）和定时函数，以根据采样时间`Ts`控制循环速率。

---

**控制循环**

```matlab
while 1
    % 步进模式
    time = toc;
    dt = time - t0;
    ...
end
```

- **解释**：
    - 开始主控制循环，将持续运行，直到手动停止。
    - 计算自控制循环开始以来的经过时间`dt`，以计算期望的轨迹点。

**检查用户输入**

```matlab
drawnow
val_0 = double(get(h, 'CurrentCharacter'));
if (val_0 == 98) % 按下'b'键停止
    break
end
```

- **解释**：
    - 调用`drawnow`更新图形窗口事件。
    - 从图形窗口读取字符输入。
    - 如果用户按下'b'键（ASCII码98），则跳出循环，有效地停止控制过程。

---

**低级控制器操作**

```matlab
% 接收反馈数据
q_f = get_joint_target_position(sim, robot_joints); % 关节反馈
T_f = getTransform(robot, q_f, 'iiwa_link_ee_kuka'); % 末端执行器位姿
rot_fb = T_f(1:3, 1:3); % 末端执行器的旋转矩阵
[ee_force, ee_torque] = get_ee_force(sim, handle_sensoree); % 读取末端执行器力传感器
t_joint = get_joint_force(sim, robot_joints); % 读取关节力传感器
```

- **解释**：
    - 获取当前的关节位置和末端执行器位姿。
    - 从变换矩阵中提取旋转矩阵。
    - 读取末端执行器传感器的力和力矩。
    - 从机器人关节读取关节力（力矩）。

---

**定义期望轨迹**

```matlab
% 设置目标（绘制圆形）
x_d = 1 * 0.15 * sin(2 * pi * dt / 60) + T_0(1, 4);
y_d = 1 * 0.15 * (1 - cos(2 * pi * dt / 60)) + T_0(2, 4);
z_d = T_0(3, 4);
p_d = [x_d; y_d; z_d]; % 期望的末端执行器位置
pd_all(k, :) = p_d';
```

- **解释**：
    - 计算期望的末端执行器位置`(p_d)`，以在XY平面上跟随半径为0.15米的圆形轨迹。
    - 该轨迹是时间相关的，每60秒完成一个完整的圆周。
    - 存储期望的位置以便分析或绘图。

---

**计算姿态和误差**

```matlab
o_d = rotm2quat(T_0(1:3, 1:3)); % 期望的末端执行器四元数
o_d_eul = quat2eul(o_d);
o_d_eul(3) = o_d_eul(3) - 0; % 在本代码中，姿态保持不变
rot_bd = eul2rotm(o_d_eul);
```

- **解释**：
    - 将初始旋转矩阵转换为四元数表示`(o_d)`。
    - 将四元数转换为欧拉角`(o_d_eul)`，以便进行潜在的修改。
    - 在此代码中，期望的姿态保持不变。
    - 将修改后的欧拉角转换回旋转矩阵`(rot_bd)`。

---

**计算控制误差**

```matlab
tran_err = T_f(1:3, 4) - p_d; % 平移误差
rot_err = rot_bd' * rot_fb; % 旋转误差矩阵
quat_err = rotm2quat(rot_err)'; % 四元数误差
quatv_err = quat_err(2:4);
quats_err = quat_err(1);
rotv_err = quats_err * rot_bd * quatv_err; % 旋转速度误差

err_df = [tran_err; rotv_err]; % 组合误差向量
```

- **解释**：
    - 计算当前和期望的末端执行器位置之间的差异。
    - 计算期望和当前姿态之间的旋转误差。
    - 将旋转误差矩阵转换为四元数，以提取旋转误差。
    - 形成包含平移和旋转分量的组合误差向量。

---

**计算关节速度并应用限制**

```matlab
jacob_m = geometricJacobian(robot, q_f, 'iiwa_link_ee_kuka'); % 获取雅可比矩阵
Jac_g = [jacob_m(4:6, :); jacob_m(1:3, :)]; % 重排雅可比矩阵
Km = 2 * diag([50 50 50 30 30 30]); % 增益矩阵
dqd = -pinv(Jac_g) * Km * err_df; % 计算关节速度
```

- **解释**：
    - 计算机器人在当前关节位置下的几何雅可比矩阵。
    - 重排雅可比矩阵以匹配误差向量的结构。
    - 定义增益矩阵`(Km)`，用于放大误差。
    - 使用逆运动学计算所需的关节速度`(dqd)`，以减少误差。

---

```matlab
% 设置限制
dqd1 = LimitJointState(dqd, 1 * dq_max);
% 获取关节位置命令
q_comm = q_f + dqd1 * Ts;
```

- **解释**：
    - 调用`LimitJointState`，确保关节速度不超过定义的限制。
    - 通过在采样时间`(Ts)`内对速度进行积分，计算命令的关节位置`(q_comm)`。

---

**更新模拟和数据记录**

```matlab
err_all(:, k) = err_df;
set_joint_target_position(sim, robot_joints, q_comm);
q_all(:, k) = q_f;
k = k + 1;
sim.step(); % 推进模拟
waitfor(loop_rate); % 维持循环速率
```

- **解释**：
    - 记录误差值以便分析。
    - 将新的关节位置发送到模拟中。
    - 记录关节位置随时间的变化。
    - 将模拟推进一步。
    - 等待以根据采样时间`(Ts)`同步循环。

---

**处理异常并停止模拟**

```matlab
catch
    disp('Lost connection to CoppeliaSim.');
    break;
end

% 停止模拟
sim.stopSimulation();
fprintf('Program ended\n');
```

- **解释**：
    - 如果发生异常（例如连接丢失），程序将显示消息并退出循环。
    - 停止CoppeliaSim中的模拟并打印结束信息。

---

**绘制关节位置**

```matlab
% 图形构建
figure(1);
clf
hold on
numRows = size(q_all, 1);

for i = 1:min(7, numRows)
    plot(1:size(q_all, 2), q_all(i, :));
end

grid on
box on
hold off;
```

- **解释**：
    - 清除图形窗口并准备绘图。
    - 遍历每个关节，绘制其位置随时间的变化。
    - 为更好的可视化添加网格线和图框。

---

**辅助函数**

- **`get_handle_Joint(sim)`**：从模拟中获取机器人关节的句柄。
- **`get_ee_handle(sim)`**：获取末端执行器力传感器的句柄。
- **`get_ee_force(sim, handle_sensor)`**：从末端执行器力传感器读取力和力矩值。
- **`get_joint_force(sim, handle_joint)`**：读取每个关节的力（力矩）。
- **`set_joint_target_position(sim, handle_joint, q)`**：在模拟中设置机器人的关节目标位置。
- **`get_joint_target_position(sim, handle_joint)`**：获取机器人的当前关节位置。
- **`LimitJointState(dq_in, dqm)`**：将关节速度`(dq_in)`限制在指定的最大速度`(dqm)`内。

---

**2. 使绘图有效并绘制高质量的图形**

要制作适用于顶级期刊（如**Nature**）的高质量图形，请遵循以下指南：

- **增加线条宽度和字体大小**：
    - 使用较粗的线条来增强可见性。
    - 为标签、标题和图例设置较大的字体大小。

- **增强绘图外观**：
    - 为不同的数据系列使用明显的颜色。
    - 在所有图形中应用一致的

风格。

- **添加注释和标签**：
    - 包含带有单位的坐标轴标签。
    - 为图形添加描述性标题。
    - 提供图例以区分不同的关节或数据系列。

- **以高分辨率导出**：
    - 以PDF、EPS或TIFF等高分辨率格式保存图形。
    - 使用更高的DPI设置（例如300 DPI或更高）。

- **改进图形质量的示例代码**：

```matlab
% 改进的图形构建
figure(1);
clf;
hold on;
numRows = size(q_all, 1);
timeSteps = (1:size(q_all, 2)) * Ts; % 将索引转换为时间值

% 定义颜色调色板
colors = lines(7);

% 使用改进的设置绘制每个关节
for i = 1:min(7, numRows)
    plot(timeSteps, q_all(i, :), 'LineWidth', 2, 'Color', colors(i, :));
end

% 设置绘图标签和标题
xlabel('时间 (s)', 'FontSize', 14);
ylabel('关节位置 (rad)', 'FontSize', 14);
title('KUKA iiwa 关节位置随时间的变化', 'FontSize', 16);

% 配置坐标轴属性
set(gca, 'FontSize', 12);
grid on;
box on;

% 添加图例
legendLabels = arrayfun(@(n) sprintf('关节 %d', n), 1:7, 'UniformOutput', false);
legend(legendLabels, 'Location', 'bestoutside', 'FontSize', 12);

hold off;

% 以高分辨率保存图形
print('KUKA_Joint_Positions', '-dpdf', '-r300'); % 以300 DPI分辨率保存为PDF
```

**提示**：

- 使用MATLAB内置的`exportgraphics`或`saveas`函数，以高质量格式保存图形。
- 确保图形中的所有文字在调整大小或打印时都清晰可读。
- 在选择颜色时，考虑色盲友好的调色板。

---

**3. 在MATLAB代码中应用MPC算法（包括移动的无人机）**

要在您的MATLAB代码中集成模型预测控制（MPC）算法，以便在存在如无人机的移动物体时控制机器人，请按照以下步骤：

**步骤1：定义系统模型**

- **机器人动力学**：
    - 创建包括运动学和动力学的机器人状态空间模型。
    - 例如，定义状态向量以包含关节位置和速度。

- **移动物体（无人机）模型**：
    - 对无人机的运动进行建模，如果它影响机器人的操作。
    - 这可以是已知的轨迹，也可以包括不确定性。

**步骤2：设置MPC控制器**

- **设计MPC**：
    - 使用MATLAB中的MPC工具箱：
      ```matlab
      % 定义系统模型（状态空间表示）
      plant = ss(A, B, C, D, Ts);
  
      % 创建MPC控制器
      mpcController = mpc(plant, Ts, PredictionHorizon, ControlHorizon);
      ```
    - `A`、`B`、`C`、`D`是定义机器人动力学的矩阵。
    - `PredictionHorizon`和`ControlHorizon`是定义预测和控制视界的整数。

- **约束和权重**：
    - 定义对输入（关节速度）和输出（位置）的约束。
    - 设置权重以平衡跟踪性能和控制努力。

**步骤3：将MPC集成到控制循环中**

- **替换现有的控制器**：
    - 在您的控制循环中，用MPC替换逆运动学控制器：
      ```matlab
      % 当前状态
      x = [q_f; dq_f];
  
      % 使用MPC计算控制动作
      u = mpcmove(mpcController, x, x_ref, [], []);
  
      % 更新关节位置
      q_comm = q_f + u * Ts;
      ```
    - `x_ref`是参考状态，包括期望的关节位置和速度。
    - 确保MPC控制器的计算在控制循环的时间限制内完成。

**步骤4：在MPC中包含移动物体**

- **避障**：
    - 将无人机的轨迹纳入MPC的预测模型中。
    - 添加约束以防止碰撞：
        - 定义无人机周围的安全区域。
        - 在MPC中使用约束函数以避免这些区域。

- **自适应参考轨迹**：
    - 根据无人机的位置修改期望的轨迹，以实现动态避让。

**步骤5：模拟和验证**

- **测试增强的系统**：
    - 运行模拟以验证MPC的性能。
    - 使用无人机以不同模式移动的场景。

- **性能调整**：
    - 调整预测和控制视界。
    - 调整输入和输出的权重，以平衡响应性和平滑性。

**其他资源**

- **MPC工具箱文档**：提供详细的解释和示例。
- **机器人系统工具箱示例**：包括在机器人系统中应用MPC的案例。
- **避碰示例**：探索使用MPC实现避碰的示例。

---

**重要注意事项**

- **计算负荷**：MPC算法可能计算量较大。确保您的控制循环能够实时运行。
- **模型准确性**：MPC的有效性取决于系统模型的准确性。包括所有相关的动力学。
- **安全约束**：在处理移动物体时，仔细定义约束以确保安全。

---

希望以上解释和指导有助于您理解代码、改进图形质量，以及将MPC算法应用于您的项目中。