#!/bin/bash -xve
mkdir -p ./catkin_ws/src
cd ./catkin_ws/src
source /opt/ros/kinetic/setup.bash
catkin_init_workspace
cd ../
catkin_make
cd ../
rsync -av /builds/gakitoru/pimouse_run_corridor /builds/gakitoru/pimouse_ros/catkin_ws/src/pimouse_run_corridor
cd /builds/gakitoru/pimouse_run_corridor/catkin_ws/src
git clone -b master --depth=1 https://gitlab.com/gakitoru/pimouse_ros.git
cd ../
catkin_make
