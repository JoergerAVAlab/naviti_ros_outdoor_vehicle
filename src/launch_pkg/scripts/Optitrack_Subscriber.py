#!/usr/bin/env python
import rospy
import csv
from geometry_msgs.msg import PoseStamped

def callback(data):
    rospy.loginfo(data)
   
    # write to file
    #f.write(data.pose.position.x)
    #f.write('\n')
    #f.flush()
    

def optitrack_subscriber():
    # name of node
    rospy.init_node('optitrack_subscriber', anonymous=True)

    # name of topic to subscribe to
    rospy.Subscriber('/vrpn_client_node/Train/pose', PoseStamped, callback)

    try:
        rospy.spin()
    finally:
        pass

if __name__ == '__main__':
    optitrack_subscriber()
    #f = open('/home/naviti/OPTITRACK.txt','w') 

    

    
