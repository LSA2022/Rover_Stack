# Rover_Stack

## Description
This stack was built to control navigation of a rover in mars terrain based on natural features from the environment. The environment and rover were simulated. 
All the packages have an informational Readme and references for the developers of some software, such as, LeGO-LOAM.
The stack has only been tested in ubuntu 18.04 - ROS melodic distribution.

## Instalation
1. Make sure you have ubuntu and ROS installed.
2. Run the install.sh file to isntall all the necessary ROS packages an dependencies.
3. Create an workspace: 
``` mkdir catkin_rover_stack ```
4. Clone Rover_stack to your workspace:
``` cd ~/catkin_rover_stack ```
``` git clone ```


## Future Work
The future work on this stack will be improve rocks detection model, coverage path planning path and surfaces shape, improve efficiency of image_processor and design the on build real rover platform, in which will run the stack.
