tcp (temporally-contingent planning) domains:

We define planning domains motivated by real-world problems, particularly robotics applications. Models involve temporal and numeric reasoning and the ability to manage incomplete knowledge and perceptual information.

DOMAIN DESCRIPTIONS:

  (1) Offshore Energy Platform:

  <p align="justify">
  Autonomous supervision of offshore structures in the oil and gas industry often requires multiple robots. For this domain, a robot has to move to specific locations, which are in a predefined roadmap (see green arrows for possible navigation directions), inspect them and communicate the data acquired to an operator.  The locations  are connected by a single or multiple paths  (PATH-2, ..., PATH-N). For this domain, there is no initial knowledge about the state of the path (free/occupied). The robot must observe if the path is clear before starting the navigation. The number of paths is fixed, and they have a hierarchy based on the distance between the points. We assume at least one of the paths is free. The solution to this problem requires a sensing action that evaluates the state of the paths.  
  </p>

  <p align="center"> <img src="/actual_figures/oil-rig.png" align="center" width="680" height="300"> </p>

  (2) Manufacturing Plant:

  <p align="justify">
  The domain presents a manufacturing plant scenario where a movile robot with an electrical manipulator and stereo cameras controls multiple variables in an industrial boiler. The robot locates the valve's panel and modifies the valve's handle depending on the mission requirements. The  domain considers the handle has a number of fixed positions associated with a set of  flows ( FLOW-1, FLOW-2, ..., FLOW-N). The robot has to inspect the valve and identifies the position of the handle in the control panel. The sensing action output will determine the regulation the robot needs to apply to set the flow to the desired value.  The robot also needs to position the robot arm in the right location to implement the manipulation at the same time the sensing action occurs. This domain requires temporal reasoning to implement concurrent actions.   
  </p>

  <p align="center"> <img src="/actual_figures/mp.png" align="center" width="650" height="230"> </p>

  (3) Valve Manipulation:

  <p align="justify">
  An offshore scenario includes a set of blowout preventers (BOPs), structures with a valve attached that can be open or closed. An Autonomous Underwater Vehicle (AUV) must close multiple during a mission. The robot has to record and communicate data every time the AUV manipulates a valve. In the initial state, the robot is at the deployment base. From the base, it is possible to navigate to the BOPs, and from there, the AUV can manipulate the valve. The AUV action should depend on the valve's state: if the valve is open, then it should be closed; if the valve is closed, then the AUV does not need to perform any action. The valve state can be checked using a sensing action. In addition, the robot needs to refuel during the mission to keep a certain energy level using an Autonomous Surface Vehicle (ASV) which is deployed in different refuel points at different time slots.  
  </p>

  <p align="center"> <img src="/actual_figures/vm.png" align="center" width="400" height="250"> </p>

  (4) Neighbourhoods:

  <p align="justify">
  The delivery of parcels to two neighbourhoods (N-1 and N-2) linked by a road  is considered in this domain. The post office is halfway from both areas, and a robot distributes all parcels. The houses have a front garden with a door which can be open or closed. The robot needs to leave the package in the house independently of the state of the door. Residents of N-1 work the whole afternoon, which has to be considered to deliver packages that require personal checks. In addition, the robot should return to the post office sometimes during the day to check if new packages arrive. The  domain introduces temporal preferences into the problem to deal with priorities in the delivery as well as reasoning about incomplete knowledge related to the door state.
  </p>

  <p align="center"> <img src="/actual_figures/n.png" align="center" width="700" height="230"> </p>

  (5) Underwater Structure (ICAPS-21 PlanRob Workshop):

  <p align="justify">
  This domain considers the inspection of an underwater structure in a real environment.
  </p>

  <p align="center"> <img src="/actual_figures/dora.png" align="center" width="550" height="230"> </p>

  (6) Biofouling Cleaning (ICAPS-21 PlanRob Workshop):

  <p align="justify">
  This domain considers the inspection of underwater strutures and the cleaning of biofouling around boat landing area (BLA) at the wind turbine bases.

        6.1 biofouling cleaning (simulation scenario)

        6.2 underwater structure (real scenario)
  </p>

  <p align="center"> <img src="/actual_figures/system.png" align="center" width="400" height="230"> </p>

  Observations:
  <p align="justify">
  Domians (biofouling cleaning ext. and underwater structure ext.) model the same problem than 6.1 and 6.2 with some changes in the problem modelling ( action's definition and incomplete knowledge definition)
  </p>
