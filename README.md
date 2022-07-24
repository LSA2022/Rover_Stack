# Rover_Stack

## Description
This stack was built to control navigation of a rover in mars terrain based on natural features from the environment. The environment and rover were simulated. 
All the packages have an informational Readme and references for the developers of some software, such as, LeGO-LOAM.
The stack has only been tested in ubuntu 18.04 - ROS melodic distribution.

## Instalation
1. Make sure you have [Ubuntu](https://ubuntu.com/download/alternative-downloads) and [ROS melodic](http://wiki.ros.org/melodic/Installation/Ubuntu#Installation) installed.
2. Run the **install.sh** file to install all the necessary ROS packages an dependencies.
3. Create an workspace: 
- ``` mkdir catkin_rover_stack ```
- ``` cd ~/catkin_rover_stack ```
- ``` mkdir src ```
4. Clone Rover_stack to your workspace:
 - ``` cd ~/catkin_rover_stack/src ```
 - ``` git clone https://github.com/LSA2022/Rover_Stack.git```
5. Compile the packages:
 - ``` cd ~/catkin_rover_stack ```
 - ``` catkin_make ```

## Run Stack
1. Launch simulation: ``` roslaunch leo_erc_gazebo bring_up_leo_rover.launch``` (rover will be up to run and you can try, using a joystick or **teleop_twist_keyboard** to move it)
2. Launch navigation: ``` roslaunch lego_navigation navigation.launch``` (mapping area is defined in **lego_navigation** "src" file package. (you can upgrade it to set the parameters in the command line)

### Aditional features
- Run **rviz** to visualize the rover operation and open ros topics for real-time monitoring of rover operaation, for example, check the update mapping point cloud from LeGO-LOAM.
- The rocks detection model can be changed in **image_processor** package, in file ****.
- 


## Future Work
The future work on this stack will be improve rocks detection model, coverage path planning path and surfaces shape, improve efficiency of image_processor and design the on build real rover platform, in which will run the stack.
