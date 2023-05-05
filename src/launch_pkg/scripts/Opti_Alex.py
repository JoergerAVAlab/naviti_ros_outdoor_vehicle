#!/usr/bin/env python
# import roslib; roslib.load_manifest('numpy_tutorials') #not sure why I need this
import rospy
from std_msgs.msg import String
import socket
serv = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
#serv.bind(('128.173.191.202', 3001))
#serv.bind(('172.29.86.125', 3001))
serv.bind(('172.29.125.57', 3001))
serv.listen(5)
f = open("/home/naviti/Desktop/Controller_go/Optidata.txt", "w")

def Opti_track_node():
    conn, addr = serv.accept()
    while not rospy.is_shutdown():
        Opti_track_message = conn.recv(4096)
        pub.publish(String(Opti_track_message))
        rospy.loginfo(Opti_track_message)
        # [ID, Position, Rotation]
        f.write(data.decode('utf-8'))
        #f.write("\n")
        print(data.decode('utf-8'))
    conn.close()
    print('client disconnected')

if __name__ == '__main__':
  try:
    pub = rospy.Publisher('Opti_track_message', String, queue_size=200)
    rospy.init_node('Opti_track_node')
    Opti_track_node()
  except rospy.ROSInterruptException:
    pass
