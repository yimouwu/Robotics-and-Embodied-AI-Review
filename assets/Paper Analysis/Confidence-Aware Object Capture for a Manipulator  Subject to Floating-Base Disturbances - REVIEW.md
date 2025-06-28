**Abstraction**

This paper presents a method for capturing stationary aerial objects using a manipulator mounted on an unmanned surface vehicle (USV) that is subject to wave-induced disturbances causing quasiperiodic and fast floating-base motions. These disturbances make accurate motion prediction challenging due to their stochastic nature, and real-time tracking is difficult because of limited active torque in the manipulator. To address these issues, the authors introduce confidence analysis in predictive capture. They calculate a real-time confidence tube to evaluate the quality of motion predictions. They then plan a trajectory to capture the object at a future moment, selecting the capture position on the predicted trajectory that maximizes confidence. All calculations are completed within 0.2 seconds to ensure timely responses. The proposed method is validated through experiments simulating real USV motions using a servo platform. The results demonstrate that the method achieves an 80% success rate in capturing the objects under floating-base disturbances.

---

**Motivation**

Deploying manipulators on USVs has significant applications in tasks like drone recovery and refueling at sea. These tasks require capturing stationary aerial objects using a manipulator from a moving platform. However, wave-induced disturbances cause the USV to experience quasiperiodic and fast floating-base motions, making it challenging to accurately predict motion and perform precise captures. Traditional methods struggle with the stochastic nature of these disturbances and the limited torque available for tracking. Therefore, there is a need for a method that can handle the unpredictability of the base motion and allow the manipulator to successfully capture objects under such conditions.

---

**Background & Gap**

*Background:*

- **Manipulator Control on Floating Bases:** Previous research on manipulators on floating bases mainly focuses on underwater or space environments where the base motions are slow or predictable.
- **Object Capture Methods:** Existing methods for capturing moving objects often rely on accurate motion prediction and precise tracking, assuming sufficient actuator torque and predictable target motion.
- **Motion Prediction Techniques:** Common motion prediction methods include model-based approaches (e.g., using kinematic or dynamic models) and data-driven approaches (e.g., autoregressive models, neural networks like LSTM, RBF networks, and wavelet networks).

*Gap:*

- **Unpredictable Base Motions:** In the case of USVs, wave-induced disturbances lead to fast and stochastic base motions, making accurate motion prediction difficult.
- **Limited Tracking Capability:** The manipulator has limited active torque, hindering its ability to perform real-time tracking under such disturbances.
- **Lack of Confidence Evaluation:** Existing methods do not account for the uncertainty in motion prediction, which is critical when dealing with stochastic disturbances.
- **Need for Real-Time Solutions:** There is a need for methods that can perform all necessary calculations quickly (within 0.2 seconds) to allow timely responses during object capture.

---

**Challenge Details**

1. **Accurate Motion Prediction Under Stochastic Disturbances:**
   - The wave-induced motions of the USV are stochastic and quasiperiodic.
   - Traditional motion predictors struggle to provide accurate predictions in such unpredictable environments.
   - Maintaining high prediction accuracy is challenging due to the nonlinearity and uncertainties of the base motions.

2. **Limited Active Torque for Real-Time Tracking:**
   - The manipulator has limited torque capabilities, restricting its ability to track moving objects precisely.
   - Fast base motions exacerbate the difficulty of tracking, as the manipulator must compensate for the base's movements.

3. **Timely Computation for Responsive Action:**
   - All calculations for motion prediction, confidence assessment, and trajectory planning need to be completed within 0.2 seconds.
   - Delay in computation can lead to missing the optimal moment for capture.

4. **Quantifying Prediction Uncertainty:**
   - Without quantifying the uncertainty in predictions, the manipulator cannot make informed decisions about when and where to attempt a capture.
   - Confidence in predictions is essential for planning safe and feasible capture trajectories.

5. **Planning Under Uncertainty and Constraints:**
   - The manipulator must plan trajectories that consider both the confidence in motion predictions and the physical constraints of the system (e.g., joint limits, kinematic feasibility).
   - Finding the optimal capture position and time under these constraints is challenging.

---

**Novelty**

1. **Confidence Analysis in Predictive Capture:**
   - Introducing a real-time confidence tube to evaluate the quality of motion predictions.
   - Utilizing a Bayesian method to assess prediction confidence, enabling the manipulator to make informed decisions.

2. **Confidence-Aware Motion Planning:**
   - Developing a motion planning approach that selects the capture position on the predicted trajectory by maximizing the confidence of that position.
   - Formulating a nonlinear optimization problem that incorporates both confidence evaluation and kinematic feasibility.

3. **Efficient Computation for Real-Time Application:**
   - Achieving computation times within 0.2 seconds by improving the efficiency of the wavelet network and dividing the optimization problem into smaller, more tractable subproblems.
   - Simplifying the selection process of significant terms in the wavelet network, enhancing computational efficiency.

4. **Modified Wavelet Network for Motion Prediction:**
   - Utilizing a wavelet network (WN) that can be trained in real time to predict object motion trajectories.
   - Improving the WN's computational efficiency by simplifying the selection of significant terms, allowing for timely updates of the prediction model.

---

**Algorithm**

1. **Motion Analysis with Confidence Evaluation:**
   - **Wavelet Network Prediction:**
     - Use a real-time trained wavelet network to predict the object's motion trajectory in the manipulator's base frame.
     - Simplify the network by selecting only significant terms, reducing computation time.
   - **Confidence Tube Calculation:**
     - Apply a Bayesian method to evaluate the confidence of the predictions.
     - Calculate a real-time confidence tube representing the uncertainty in the predicted trajectory.

2. **Confidence-Aware Motion Planning:**
   - **Capture Position Optimization:**
     - Formulate a nonlinear optimization problem to select the capture position and time on the predicted trajectory that maximizes prediction confidence.
     - Incorporate manipulator constraints (e.g., joint limits, maximum velocities) to ensure kinematic feasibility.
   - **Trajectory Planning:**
     - Plan a trajectory for the manipulator to reach the selected capture position at the specified time while satisfying all constraints.
     - Divide the optimization problem into two parts—capture position optimization and joint-space trajectory optimization—to reduce computation time.

3. **Initialization Method:**
   - **Safe Boundary Determination:**
     - Estimate the object's motion region using an enclosing ellipsoid based on recent observations.
     - Expand the ellipsoid to define a safe boundary, ensuring that the manipulator avoids collisions.
   - **Initialization Position Selection:**
     - Select an initial position for the manipulator on the safe boundary where it can wait before executing the capture.
     - Solve a simplified optimization problem to find a reachable and safe initialization position.

---

**Method**

- **Real-Time Motion Prediction:**
  - Utilize a wavelet network (WN) to model and predict the object's motion based on recent observed positions.
  - Improve computational efficiency by selecting significant terms during the orthogonal factorization process of the WN.
  - Update the model in real time to adapt to changes in the object's motion.

- **Confidence Evaluation:**
  - Implement a Bayesian approach to assess the confidence in motion predictions.
  - Calculate the error between predicted and actual positions and classify it into discrete levels.
  - Use the confidence levels to compute an error expectation for multistep predictions, forming a confidence tube.

- **Motion Planning under Uncertainty:**
  - Formulate an optimization problem that seeks to minimize the task-space errors (position and orientation) and control efforts while maximizing the confidence of the capture position.
  - Incorporate constraints on joint positions, velocities, accelerations, and capture timing.
  - Due to the computational complexity, divide the problem into:
    - **Capture Position Optimization:**
      - Determine the optimal capture time and joint positions by solving a reduced nonlinear programming (NLP) problem.
    - **Joint-Space Trajectory Optimization:**
      - Generate the manipulator's trajectory by solving a quadratic programming (QP) problem, ensuring smooth and feasible motion.

- **Initialization Process:**
  - Monitor the object's observed positions to estimate its motion region.
  - Define a safe boundary by expanding the estimated region to account for uncertainties and ensure collision avoidance.
  - Select an initialization position for the manipulator on the safe boundary by solving an optimization problem that considers proximity to the object and manipulator reachability.

- **Experimental Validation:**
  - Conduct simulations using MATLAB and Simscape to test the predictor's performance and the motion planning method under simulated disturbances.
  - Implement the method on a physical manipulator mounted on a servo platform to simulate real USV motions.
  - Test various motion scenarios, including sinusoidal and irregular base motions derived from real USV data.

---

**Conclusion & Achievement**

- **Successful Development of a Confidence-Aware Capture Method:**
  - The authors developed a method that allows a manipulator to capture stationary aerial objects under stochastic and quasiperiodic floating-base disturbances.
  - By incorporating confidence analysis into predictive capture, the method effectively handles inaccuracies in motion prediction.

- **Real-Time Computation Achieved:**
  - All calculations, including motion prediction, confidence evaluation, and motion planning, are completed within 0.2 seconds.
  - The method's computational efficiency makes it suitable for real-time applications in dynamic and unpredictable environments.

- **Experimental Validation Demonstrates Effectiveness:**
  - The method achieved an 80% success rate in capturing objects in experimental tests that simulated real USV motions.
  - The experiments confirmed that the confidence-aware approach improves capture accuracy and success rates compared to methods without confidence evaluation.

- **Addresses Challenges of Limited Torque and Prediction Uncertainty:**
  - The method accounts for the manipulator's limited active torque by planning feasible trajectories that maximize the confidence of successful capture.
  - The confidence evaluation enables the manipulator to decide when to initiate the capture process based on the reliability of predictions.

- **Contributions to Manipulator Control Under Disturbances:**
   - Provides a novel solution for manipulating objects under stochastic floating-base disturbances.
   - Enhances the capability of USV-mounted manipulators in applications such as drone recovery, refueling, and other maritime operations.

---

**Note:** This analysis summarizes the key aspects of the paper "Confidence-Aware Object Capture for a Manipulator Subject to Floating-Base Disturbances" and highlights the main contributions and findings as presented by the authors.