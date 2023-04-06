#!/usr/bin/env python
# import roslib; roslib.load_manifest('numpy_tutorials') #not sure why I need this
import rospy
from std_msgs.msg import String
import socket
serv = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serv.bind(('172.29.127.124', 3001))
serv.listen(5)

def Opti_track_node():

    conn, addr = serv.accept()

    # specify name of topic
    pub = rospy.Publisher('Opti_track_message', String, queue_size=1)

    # specify name of node
    rospy.init_node('Opti_track_node')

    # specify rate in Hz 
    #rate = rospy.Rate(240) 

    while not rospy.is_shutdown():
        Opti_track_message = conn.recv(1024)
        print(Opti_track_message)
        pub.publish(String(Opti_track_message))
        #rospy.loginfo(Opti_track_message)
        #rate.sleep()

        # [ID, Position, Rotation]
	#f = open("/home/naviti/Desktop/Controller_go/Optidata.txt", "w")
        #f.write(str(Opti_track_message))
	#f.close()
        #f.write("\n")
        #print(data.decode('utf-8'))
	

    conn.close()
    print('client disconnected')

if __name__ == '__main__':
  try:
    Opti_track_node()
  except rospy.ROSInterruptException:
    pass
