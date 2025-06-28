**Abstract**

This paper introduces a novel reconfigurable manipulator that combines active rigid joints with deformable links, enabling increased dexterity and an extended workspace through the bending of its deformable components. The primary challenge addressed is the difficulty in modeling and controlling such a manipulator due to frequent and unpredictable changes in its configuration. To overcome this, the authors propose a hybrid model to describe the manipulator's behavior and a model-free control framework that requires no prior kinematic information. This framework is based on the assumption that the Jacobian matrix remains constant within a local region and can be estimated by incrementally moving each actuator and observing the effects on the end-effector. Experimental validation on a four-degree-of-freedom manipulator demonstrates the effectiveness of the proposed methods, highlighting their ability to adapt automatically to kinematic changes and reach targets even outside the current workspace—tasks that are challenging for traditional model-based approaches.

---

**Motivation**

The development of home service robots necessitates manipulators that are safe, flexible, and cost-effective to operate in unstructured environments around humans. Traditional rigid-link manipulators lack the adaptability and safety required for such tasks, potentially causing harm during unexpected collisions. While continuum or soft manipulators offer increased flexibility and safety, they often come with complexities in design, control, and reduced payload capacity, making them less practical for home service applications. Therefore, there is a strong motivation to create a manipulator that combines the rigidity needed for carrying heavier loads with the adaptability and safety of deformable links, without relying on complex modeling or expensive components.

---

**Background & Gap**

Current robotic manipulators fall into two broad categories: rigid-link manipulators and continuum (soft) manipulators. Rigid-link manipulators provide strength and precision but are limited in flexibility and safety. Continuum manipulators offer high flexibility and safe interaction with the environment but often suffer from complex control requirements, intricate mechanical designs, and limited payload capacities due to their soft materials and specialized actuators.

There is a significant gap in the development of manipulators that can dynamically reconfigure themselves to adapt to various tasks and environments while maintaining a simple design and control scheme. Specifically, there is a need for manipulators that can adjust their workspace on demand without the need for complex recalibration or modeling efforts each time their configuration changes.

---

**Challenge Details**

The key challenges addressed in this paper are:

1. **Modeling Difficulty**: The reconfigurable manipulator's frequent changes in shape due to bending of the deformable links result in unknown and varying kinematic parameters, making traditional modeling approaches ineffective.

2. **Control Complexity**: Without precise kinematic models, controlling the manipulator to reach target positions becomes challenging, especially when the manipulator's configuration can change abruptly.

3. **Hybrid System Behavior**: The manipulator exhibits hybrid behaviors, combining continuous motion with discrete events (bending operations), which complicates both the modeling and the control processes.

4. **Workspace Limitations**: Determining whether a given target is within the current workspace and deciding when to reconfigure the manipulator to reach targets outside of it require intelligent decision-making within the control framework.

---

**Novelty**

The novelty of this work lies in:

- **Hybrid Modeling Approach**: Introducing a hybrid model that effectively captures the manipulator's continuous and discrete behaviors, enabling the representation of both smooth movements and sudden configuration changes due to bending.

- **Model-Free Control Framework**: Developing a control strategy that does not rely on prior knowledge of the manipulator's kinematics. By assuming a locally constant Jacobian, the framework estimates the Jacobian matrix on-the-fly, allowing for real-time adaptation to configuration changes.

- **State Transition Design**: Formulating specific state transition conditions within the hybrid model that allow the manipulator to autonomously decide when to estimate the Jacobian, perform bending operations, or reconfigure joints to avoid singularities and joint limits.

- **Target Reachability Determination**: Enabling the manipulator to identify when a target is unreachable within the current configuration and to trigger reconfiguration procedures to extend its workspace.

---

**Algorithm**

The proposed algorithm consists of the following key steps:

1. **Jacobian Estimation Mode (JEM)**:
   - **Estimation**: Move each joint incrementally and measure the resulting end-effector displacement using visual feedback.
   - **Calculation**: Compute the Jacobian matrix by dividing the displacement vectors by the joint increments.

2. **Differential System Mode (DSM)**:
   - **Desired Displacement Calculation**: Determine the desired end-effector movement towards the target within a small, controllable step length.
   - **Control Signal Generation**: Use the estimated Jacobian to compute joint increments needed to achieve the desired displacement.
   - **Secondary Task Incorporation**: Include a term in the control law to avoid joint limits and self-collisions by minimizing a cost function related to joint positions.

3. **Evaluation and Transition**:
   - **Deviation Measurement**: After applying the control signals, measure the actual end-effector displacement and compare it with the desired displacement.
   - **Jacobian Re-estimation**: If the deviation exceeds a predefined threshold, transition back to JEM to re-estimate the Jacobian.
   - **Bending Operation Mode (BOM)**: If the target is determined to be unreachable in the current configuration, transition to BOM to manually or automatically reconfigure the manipulator's deformable links.

---

**Method**

The method integrates the algorithm within a hybrid control framework:

- **Hybrid Model Definition**: The manipulator's control system is modeled as a hybrid automaton with discrete states corresponding to different control modes (JEM, DSM, BOM) and continuous dynamics within these states.

- **State Transition Conditions**: Specific conditions are defined to trigger transitions between states, such as excessive deviation prompting a re-estimation of the Jacobian or determining that a target is unreachable in the current configuration.

- **Model-Free Control Execution**:
  - Utilize visual feedback (e.g., from a motion capture system) to obtain real-time end-effector position measurements.
  - Apply control signals computed using the locally estimated Jacobian.
  - Continuously monitor system performance and adapt as necessary based on the designed transition conditions.

- **Experimental Implementation**:
  - The proposed methods are implemented on a four-degree-of-freedom reconfigurable manipulator with two deformable links.
  - Experiments include tracking single and multiple targets, adapting to unexpected kinematic changes, and reaching targets outside the initial workspace.

---

**Conclusion & Achievement**

The paper successfully demonstrates that the combination of a hybrid model with a model-free control framework allows for effective control of a reconfigurable manipulator with unknown and changing kinematic parameters. Key achievements include:

- **Automatic Adaptation**: The manipulator can automatically adapt to changes in its configuration without the need for recalibration or prior kinematic models.

- **Extended Workspace Utilization**: By incorporating bending operations into the control framework, the manipulator can reach targets beyond its initial workspace, enhancing its versatility.

- **Model-Free Control Efficacy**: The proposed control strategy effectively guides the manipulator to track given targets and paths, even in the presence of unpredictable kinematic changes.

- **Experimental Validation**: The practical implementation and experimental results confirm the theoretical findings and show the method's potential for real-world applications, particularly in settings where flexibility and adaptability are crucial.

---

By addressing the challenges associated with modeling and controlling a manipulator that frequently changes shape, this work contributes significantly to the field of robotics, offering a practical solution for the deployment of adaptable, safe, and efficient manipulators in unstructured environments.