OPTIC-CoEffects Domains:

We define planning domains motivated by real-world problems, particularly robotics applications. Models involve temporal and numeric reasoning and the ability to manage incomplete knowledge and perceptual information.

DOMAIN DESCRIPTIONS:

  OIL-RIG:

  <p align="justify">

  Autonomous supervision of offshore structures in the oil and gas industry often requires multiple robots. For this domain, a robot has to move to specific locations, which are in a predefined roadmap (see green arrows for possible navigation directions), inspect them and communicate the data acquired to an operator.  The locations  are connected by a single or multiple paths  (PATH-2, ..., PATH-N). For this domain, there is no initial knowledge about the state of the path (free/occupied). The robot must observe if the path is clear before starting the navigation. The number of paths is fixed, and they have a hierarchy based on the distance between the points. We assume at least one of the paths is free. The solution to this problem requires a sensing action that evaluates the state of the paths. 
  </p>

  <p align="center"> <img src="/figures/oil-rig.png" align="center" width="600" height="300"> </p>

  MANUFACTURING-PLANT

  <p align="center"> <img src="/figures/mp.png" align="center" width="600" height="230"> </p>

  VALVE-MANIPULATION

  <p align="center"> <img src="/figures/vm.png" align="center" width="400" height="250"> </p>

  NEIGHBOURHOODS

  <p align="center"> <img src="/figures/n.png" align="center" width="700" height="230"> </p>
