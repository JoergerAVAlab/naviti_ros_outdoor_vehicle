#!/usr/bin/env python
# import roslib; roslib.load_manifest('numpy_tutorials') #not sure why I need this

# Author: Casey Smith (c) 2023   Email: caseysmith@vt.edu
# NAViTi Lab - Spring 2023
#
# Project - UAV-based Jammer Localization Testbed using UWB as RFI Surrogate
# 
# Description:
# This code initializes the ROS node DWM1001_RANGE_node - which publishes
# the range message from a Decawave DWM1001-DEV sensor configured as a 
# Tag and connected to the PC over micro USB serial connection (). There
# must be a single DWM1001-DEV configured as an Anchor on the same network
# as the Tag (same PANID).

# Imports
import rospy
import time
from std_msgs.msg import String
import serial

# Initialize Serial Coms for the Sensor
DWM1001 = serial.Serial( '/dev/ttyACM0' , 115200 )       # Define the serial device (Port, baud) - ttyACM0 is from past experience with device
DWM1001.write('\n\n')                                    # Initialize data streaming (first couple lines will not be range measurements)
time.sleep(1)                                            # Wait for half a second for tag to respond
DWM1001.write('les\n')                                   # 'les' begins data streaming - more commands can go here to make startup more robust (updte rate, etc)                                  

# Begin ROS Node
def DWM1001_RANGE_node():                                                                 # Define the ROS node

    pub_DWM1001R = rospy.Publisher('DWM1001_RANGE_message', String, queue_size=600)       # Define the publisher object
    rospy.init_node('DWM1001_RANGE_node')                                                 # initialize the ROS node

    while not rospy.is_shutdown():                                       # As long as rospy is active
        if DWM1001.inWaiting():                                          # "inWaiting()" means that DWM1001 is not involved in other process
            Data_message = DWM1001.readline().encode( 'ascii' )          # Read everything prior to /n, turn into ASCII
            anchor_id = Data_message[0:3]                                # Not Currently used (not published)
            rospy.loginfo(Data_message)                                  # This will print Data_Message to the terminal
            pub_DWM1001R.publish(String(Data_message))                   # Publish this data to the node as a String (can make more advanced later)


if __name__ == '__main__':                        # if ...
	try:
		DWM1001_RANGE_node()                      # attempt to ...
	except rospy.ROSInterruptException:           # ... unless there is a ROS interuption (then rospy.ROSInt... will be true)
		pass                                      # if ROS is interupted - "pass" - which means...
