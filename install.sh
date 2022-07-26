#!/bin/bash

echo "Installing Rover Stack dependencies..."
echo "This may take as much as rover speed on Mars..."
sleep 7

sudo apt-get update

sudo apt-get install ros-melodic-octomap*

sudo apt-get install ros-melodic-costmap-2d*

sudo add-apt-repository ppa:borglab/gtsam-release-4.0

sudo apt install libgtsam-dev libgtsam-unstable-dev

sudo apt-get install ros-melodic-gazebo*

sudo apt-get install ros-melodic-joy*

sudo apt-get install ros-melodic-teleop-*

sudo apt-get install ros-melodic-velodyne*

sudo apt-get install ros-melodic-realsense*

sudo apt-get install ros-melodic-control*

sudo apt-get install ros-melodic-controlller*

sudo apt-get install ros-melodic-velocity-*

sudo apt-get install ros-melodic-rtabmap*

sudo apt-get install python-seaborn

sudo apt-get install ros-melodic-rospkg*

sudo apt-get install python-numpy

sudo apt-get install ros-melodic-ros-numpy 

sudo apt-get install python3

sudo apt-get install python3-catkin-pkg-modules

sudo apt-get install python3-rospkg-modules

sudo apt install python3-dev python3-pip python3-venv

python3 -m pip install --upgrade pip

python3 -m pip install --upgrade tensorflow -U "protobuf<4.21.0"

python3 -m pip install tensorflow-object-detection-api -U "protobuf<4.21.0"

echo "Making sure all screws are well-tightened..."
sleep 5
echo "All done! Enjoy your Rover!"