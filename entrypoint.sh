#!/bin/bash
set -e

# Source ROS setup files
source /opt/ros/noetic/setup.bash
source /catkin_ws/devel/setup.bash

# Launch TortoiseBot simulation
roslaunch tortoisebot_gazebo tortoisebot_playground.launch &

# Wait for Gazebo to fully load
sleep 20

# Run the waypoints test
rostest tortoisebot_waypoints waypoints_test.test --reuse-master x:=0.5 y:=0.5 tolerance:=0.1