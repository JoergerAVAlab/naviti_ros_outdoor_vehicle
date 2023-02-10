#!/usr/bin/env python
# import roslib; roslib.load_manifest('numpy_tutorials') #not sure why I need this
import rospy
from std_msgs.msg import String
import can

def RAW_RADAR_node():
 bustype = 'socketcan'
 channel = 'can0'
 bus =can.interface.Bus(channel=channel, bustype=bustype)
 #RAW_RADAR = open("../data/RAW_RADAR.txt","w")
 while not rospy.is_shutdown():
   Data_message = bus.recv()
   if Data_message != None:
      #RAW_RADAR.write(unicode(String(Data_message)))
      #RAW_RADAR.write("\n")
      pub.publish(unicode(String(Data_message)))
      #rospy.loginfo(Data_message)



if __name__ == '__main__':
  try:
    pub = rospy.Publisher('RAW_RADAR_publisher', String, queue_size=100)
    rospy.init_node('RAW_RADAR_node')
    RAW_RADAR_node()
  except rospy.ROSInterruptException:
    pass
