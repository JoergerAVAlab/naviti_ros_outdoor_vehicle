#!/usr/bin/env python
# import roslib; roslib.load_manifest('numpy_tutorials') #not sure why I need this
import rospy
from std_msgs.msg import String
import serial
from novatel_pkg.msg import INSPVAS, RANGE, RAWIMUSX, BESTPOS
from colorama import Fore, Back, Style
import SPAN_LOGS as sl

Propak6 = serial.Serial( '/dev/ttyUSB0' , 115200 )

def SPAN_node():

	# Publishers for different rostopics
	pub_INSPVAS = rospy.Publisher('INPVAS_publisher', INSPVAS, queue_size=600)
	pub_RAWIMUSX = rospy.Publisher('RAWIMUSX_publisher', RAWIMUSX, queue_size=600)
	pub_RANGE = rospy.Publisher('RANGE_publisher', RANGE, queue_size=3)
	pub_BESTPOS = rospy.Publisher('BESTPOS_publisher', BESTPOS, queue_size=3)
	pub_BESTGNSSPOS = rospy.Publisher('BESTGNSSPOS_publisher', BESTPOS, queue_size=3)

	rospy.init_node('SPAN_node')
	align = False
	msg_byte_len = 104 # tmp length wait until rawimu msg to align

	while not rospy.is_shutdown():
		if Propak6.inWaiting():
			if align:

				header_hex = ''
				msg_len = 0
				msg_id = 0

				sync = Propak6.read(3).encode("hex")

				if sync == sl.SHEADER["Sync"]:
					header_hex = sync + Propak6.read(9).encode("hex")
					msg_len = sl.Get_Value(header_hex, sl.SHEADER["Msg Length"])
					msg_id = sl.Get_Value(header_hex, sl.SHEADER["MsgID"])
				elif sync == sl.LHEADER["Sync"]:
					header_hex = sync + Propak6.read(25).encode("hex")
					msg_len = sl.Get_Value(header_hex, sl.LHEADER["Msg Length"])
					msg_id = sl.Get_Value(header_hex, sl.LHEADER["MsgID"])
				else:
					align = False
					print(Back.RED + "EXCEPTION")
					print("NOT ALIGNED -----------------------------------------------------------------------------")
					print(Style.RESET_ALL)
					continue

				if msg_id == sl.INSPVASB["MsgID"]:
					msg_hex = Propak6.read(msg_len).encode("hex")
					msg = sl.inspvas_rosmsg(msg_hex, header_hex)
					pub_INSPVAS.publish(msg)
					#rospy.loginfo(msg)
				elif msg_id == sl.RAWIMUSXB["MsgID"]:
					msg_hex = Propak6.read(msg_len).encode("hex")
					msg = sl.rawimusx_rosmsg(msg_hex, header_hex)
					pub_RAWIMUSX.publish(msg)
					#rospy.loginfo(msg)
				elif msg_id == sl.RANGEB["MsgID"]:
					num_obs_hex = Propak6.read(4).encode("hex")
					num_obs = sl.Get_Value(num_obs_hex, sl.RANGEB["#OBS"])
					print("Number of Observations: " + str(num_obs))
					for i in range(num_obs):
						msg_hex = num_obs_hex + Propak6.read(sl.RANGEB["Length"]).encode("hex")
						msg = sl.range_rosmsg(msg_hex, header_hex)
						pub_RANGE.publish(msg)
						#rospy.loginfo(msg)
				elif msg_id == sl.BESTPOSB["MsgID"]:
						msg_hex = Propak6.read(msg_len).encode("hex")
						msg = sl.bestpos_rosmsg(msg_hex, header_hex)
						pub_BESTPOS.publish(msg)
						rospy.loginfo(msg)
				elif msg_id == sl.BESTGNSSPOSB["MsgID"]:
						msg_hex = Propak6.read(msg_len).encode("hex")
						msg = sl.bestpos_rosmsg(msg_hex, header_hex)
						pub_BESTGNSSPOS.publish(msg)
						#rospy.loginfo(msg)
				else:
					msg_hex = Propak6.read(msg_len)
					rospy.loginfo("HIT ELSE: UNKNOWN LOG " + str(msg_len) + " " + str(msg_id))


				# All the logs end in a 32-bit CRC or basically a checksum terminator value that can be used to check data corruption
				terminator = Propak6.read(4).encode("hex")

				#try:
				#	pub_SPAN.publish(msg)
				#	rospy.loginfo(msg)
				#except:
				#	#pass
				#	print(Back.RED + "EXCEPTION")
				#	rospy.loginfo(msg)
				#	print(Style.RESET_ALL)
		
		
			else:
				# look for the alignment byte at the beginning of the header
				startbyte = Propak6.read().encode("hex")
				if startbyte == 'aa':
					nextbytes = Propak6.read(2).encode("hex")
					sync = startbyte + nextbytes
					if sync == sl.SHEADER["Sync"] or sync == sl.LHEADER["Sync"]:
						align = True
						Propak6.read(msg_byte_len-3) # read the remaining line so on the next loop you start at the beginning of the header



if __name__ == '__main__':
	try:
		SPAN_node()
	except rospy.ROSInterruptException:
		pass

