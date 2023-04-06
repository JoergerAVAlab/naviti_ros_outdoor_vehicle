#!/usr/bin/env python
# import roslib; roslib.load_manifest('numpy_tutorials') #not sure why I need this
import rospy
#import std_msgs.msg
from std_msgs.msg import String
from sensor_msgs.msg import Imu
from colorama import Fore, Back, Style
import struct
import serial

IMU = serial.Serial( '/dev/ttyUSB0' , 115200 )

def IMU_node():
   print(Back.GREEN + "IMU NODE STARTED")
   print(Style.RESET_ALL)

   pub = rospy.Publisher('RAWIMUSXB_message', Imu, queue_size=1000)
   rospy.init_node('IMU_node')
   #rate = rospy.Rate(200) # 100 Hz
   align = False

   while not rospy.is_shutdown():
     if IMU.inWaiting():
	 if align:
		line = IMU.read(56).encode("hex")
		startbyte = line[0:6]
		if startbyte != 'aa4413':
			align = False
			
		H = 12 # size of short header in bytes 
		zaccel = (H+16)*2 # hex bit offset of z-linear-acceleration from header
		yaccel = (H+20)*2 # hex bit offset of y-linear-acceleration from header
		xaccel = (H+24)*2 # hex bit offset of x-linear-acceleration from header
		zgyro = (H+28)*2 # hex bit offset of z-angular-velocity from header
		ygyro = (H+32)*2 # hex bit offset of y-angular-velocity from header
		xgyro = (H+36)*2 # hex bit offset of x-angular-velocity from header

		# header = line[0:24] # 28 byte header (Short 12 byte)
 		# other = line[24:56] # 16 byte - ignore other IMU info for now, should implement later to check status of IMU
		msg = Imu()
		msg.linear_acceleration.z = struct.unpack('<i',bytearray.fromhex(line[zaccel:zaccel+8]))[0] # 4 bytes (hex: 1 byte 2 char -> 4 byte 8 char)
		msg.linear_acceleration.y = struct.unpack('<i',bytearray.fromhex(line[yaccel:yaccel+8]))[0] # 4 bytes
     		msg.linear_acceleration.x = struct.unpack('<i',bytearray.fromhex(line[xaccel:xaccel+8]))[0] # 4 bytes
		msg.angular_velocity.z = struct.unpack('<i',bytearray.fromhex(line[zgyro:zgyro+8]))[0] # 4 bytes
		msg.angular_velocity.y = struct.unpack('<i',bytearray.fromhex(line[ygyro:ygyro+8]))[0] # 4 bytes
		msg.angular_velocity.x = struct.unpack('<i',bytearray.fromhex(line[xgyro:xgyro+8]))[0] # 4 bytes

		# Check live on terminal the delayed reaction time of the IMU
		# if msg.angular_velocity.z < -20000 or msg.angular_velocity.z > 20000:
		#	print(Back.RED)
		#	rospy.loginfo(msg)
		#	print(Style.RESET_ALL)

		try:
			pub.publish(msg)
			rospy.loginfo(msg)
			#print(line)
		except:
			print(Back.RED + "EXCEPTION")
			rospy.loginfo(msg)
			print(Style.RESET_ALL)
		
		
	 else:
		# look for the alignment byte at the beginning of the header
		startbyte = IMU.read().encode("hex")
	 	if startbyte == 'aa':
		    nextbytes = IMU.read(2).encode("hex")
		    if nextbytes == '4413':
	                align = True
			IMU.read(53) # read the remaining line so on the next loop you start at the beginning of the header
	 
	 #print(Data_message.encode("hex"))
         #if (message_type == '#RAWIMUXA'):
         #msg = String()
         #msg = Byte()
	     #header = std_msgs.msg.Header()
	     #header.stamp = rospy.Time.now()
	     #header.frame_id = Data_message
	 #msg.data = Data_message
	    
         #rate.sleep()

if __name__ == '__main__':
  try:
    IMU_node()
  except rospy.ROSInterruptException:
    IMU.close()
    pass
