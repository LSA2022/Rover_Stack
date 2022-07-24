# Rover_Stack

## Description
This stack was built to control navigation of a rover in mars terrain based on natural features from the environment. The environment and rover were simulated. 
All the packages have an informational Readme and references for the developers of some software, such as, LeGO-LOAM.
The stack has only been tested in Ubuntu 18.04 (Bionic) - ROS melodic distribution.

## Machine recomendations
Due to high computing processing of **image_processor** package, it is recommend to run the simulation on a machine with the following characteristics or higher:
- i7 (4.1 GHz) or similar
- GTX 1550 or similar
- At least 16Gb of RAM

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
5. Update submodules: 
 - ``` cd ~/catkin_rover_stack/src/Rover_Stack ```
 - ``` git submodule update --init image_pipeline_ca/ image_processor/ LeGO-LOAM/ leo_rover/ grid_map_v2/ lego_navigation/ cpp/ ``` (make sure you have your github logging for each step)  
 - ``` cd ~/catkin_rover_stack/src/Rover_Stack/leo_rover ```
 - ``` git submodule update --init leo_common/ leo_erc_common/ leo_erc_desktop/ ```
7. Compile the packages:
 - ``` cd ~/catkin_rover_stack ```
 - ``` catkin_make ```

## Run Stack
1. Launch simulation: ``` roslaunch leo_erc_gazebo bring_up_leo.launch ``` (rover will be up to run and you can try, using a joystick or **teleop_twist_keyboard** to move it)
2. Launch navigation: ``` roslaunch lego_navigation navigation.launch``` (mapping area is defined in **lego_navigation** _src_ file package. (you can upgrade it to set the parameters in the command line)

### Aditional features
- Run **rviz** to visualize the rover operation and open ros topics for real-time monitoring of rover operaation, for example, check the update mapping point cloud from LeGO-LOAM.
- The rocks detection model can be changed in **image_processor** package, in file _detection.py_.

## Future Work
The future work on this stack will be improve rocks detection model, coverage path planning path and surfaces shape, improve efficiency of image_processor and design the on build real rover platform, in which will run the stack.
