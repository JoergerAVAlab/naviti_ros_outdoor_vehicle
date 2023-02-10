#!/usr/bin/env bash
sudo ip link set can0 type can bitrate 500000
sudo ifconfig can0 up

#Radar Object
cansend can0 200#F8000000089C0000

# Radar Cluster
candump can0
sudo chmod 777 /dev/ttyUSB0
sudo ip addr add 10.5.5.1/24 dev enx00e04c681332
sudo ip link set enx00e04c681332 up

sleep 2

sudo dnsmasq -C /dev/null -kd -F 10.5.5.50,10.5.5.100 -i enx00e04c681332 --bind-dynamic

catkin_make
source ./devel/setup.bash
roslaunch ./src/launch_pkg/launch/collect_rover_data.launch
exec bash
