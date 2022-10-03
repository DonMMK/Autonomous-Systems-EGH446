## Part 1: What is AN?
- determine location and plan a path to goal
- AN -> do w/o human. Get vehicle to use sensors and move around
- heuristic approach: maze solving vehicle  
practical rules, not guaranteed to be otimal, no map of the maze works as long as it doesnt get stuck in a loop.

side note on bratihenberg vehicles.  

- vs optimal approach  
- builds a model of the env -> optimal path to get to the goal.  
lane change example -> so have h behaviour -> approaches complement each other.

difficult because the env is unknown so model env has to be updated + mapping the obstacles + while moving  
difficulty is in navigating in a changing environment and get to destination effectively.  


- capabilities of AS
Physical world -> sense env -> perceive data -> plan path to goal -> Act on that plan-> Physical world  

- sensor fusion series -> Navigation series -> 

## Part 2: Understanding the particle filter
- estimate postion and orientation of a mobile robot using particle filter
- what is this filter and randon dots? : 
- localization problem: konws the map but doesnt know where it is so use the sensors to determine position and orientation 
- use a lidar for this using point cloud but
- measuremnts are noisy. This measurements can be used to match to map and determine where it is 
- in addition can dead reckon : when future position calculated using relative mesurement and past position. ++ relative measurement from GPS and IMU sensor working together.
- determine location using noisy lidar and noisy odometry. use kalman filter to get estimated state
- the probability need to be gaussain to use KF. Important: PD of estimated state must be Guass
- Thats where particle filter comes in: 
- equally probable for us to be in the map -> we approx by using discrete poses randomly uniformly -> each is saved as possible estimation of state -> accuracy vs speed depending on number of "particles" used. 
- enlarge the particles that are more likely to be correct and remove or reduce the unlikely particles -> re sample -> goes from normal distribution to bi-modal -> we can use less particles since we are narrowing the true pose -> so adaptive Monte carlo localization -> so when converging can slowly do resizing for each generation.
- TurtleBot using Monte Carlo Localization
- what if we dont have a map?? -> SLAM

## Part 3: Use SLAM for pose graph
- no map -> so build mao while estimation vehciles pose (location , orientation)
- 2 types of slam: 
- 1. Filtering -> ekf, particle. state is estimated on the go with latest measurements
- 2. Smoothing -> pose graph optimization -> full trajectories

- has lidar + dead reckon uisng odomentry sensor -> how to understand the environment?

- 


## Part 4: Extended Tracking


## Part 5: Will it work?
