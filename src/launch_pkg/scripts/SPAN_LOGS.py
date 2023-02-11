#!/usr/bin/env python

# Author: Brandon Medellin
# Last Update: 01/25/2023

from email import header
import struct
from novatel_pkg.msg import INSPVAS, RANGE, RAWIMUSX, BESTPOS

HEX = 2   # number of characters in hex that represent 1 BYTE

# Format to convert to from binary (i.e. Integer, Float, Character ...)
# See https://docs.python.org/3/library/struct.html for documentation on this
# Novatel Format Reference: https://docs.novatel.com/OEM7/Content/Messages/Messages.htm
FORMATS = {
		'b':1, # (Char) 8-bit Integer
		'B':1, # Unsigned (Char) 8-bit Integer
		'H':2, # Unsigned (UShort) 16-bit Integer
		'i':4, # 32-bit Integer
		'I':4, # Unsigned 32-bit Integer
		'l':4, # 32-bit Integer
		'L':4, # Unsigned 32-bit Integer
		'd':8, # (Double) 64-bit Float
		'f':4, # (Float) 32-bit Float
		'4s':4, # 4 byte character array (string)
		'4c':4, # 4 byte character array indivudual characters
}

# Short Header Documentation https://docs.novatel.com/OEM7/Content/Messages/Description_of_Short_Headers.htm
SHEADER = {
	"Length":12,
	"Sync":'aa4413',
	"Msg Length":(3,'B'),
	"MsgID":(4,'H'),
	"GNSS Week":(6,'H'),
	"GNSS Mili":(8,'i'),
}

# Long Header Documentation https://docs.novatel.com/OEM7/Content/Messages/Binary.htm
LHEADER = {
	"Length":25,
	"Sync":'aa4412',
	"Header Length":(3,'B'),
	"MsgID":(4,'H'),
	"Message Type":(6,'b'),
	"Port Address":(7,'B'),
	"Msg Length":(8,'H'),
	"Sequence":(10,'H'),
	"Idle Time":(12,'B'),
	"Time Status":(13,'B'),
	"GNSS Week":(14,'H'),
	"GNSS Mili":(16,'i'),
	"Reciever Status":(20,'I'),
	"Reserved":(24,'H'),
	"Receiver S/W Version":(26,'H')
}

# https://docs.novatel.com/OEM7/Content/SPAN_Logs/INSPVASB.htm
INSPVASB = {
	"MsgID":508,
	"Length":88,
	"Week":(0,'I'),
	"Seconds":(4,'d'),
	"Latitude":(12,'d'),
	"Longitude":(20,'d'),
	"Height":(28,'d'),
	"North Velocity":(36,'d'),
	"East Velocity":(44,'d'),
	"Up Velocity":(52,'d'),
	"Roll":(60,'d'),
	"Pitch":(68,'d'),
	"Azimuth":(76,'d'),
	"Status":(84,'I'),
}

# https://docs.novatel.com/OEM7/Content/SPAN_Logs/RAWIMUSX.htm
RAWIMUSXB = {
	"MsgID":1462,
	"Length":40,
	"IMU Info":(0,'B'),
	"IMU Type":(1,'B'),
	"GNSS Week":(2,'H'),
	"GNSS Seconds":(4,'d'),
	"IMU Status":(12,'I'),
	"Z Accel":(16,'i'),
	"Y Accel":(20,'i'),
	"X Accel":(24,'i'),
	"Z Gyro":(28,'i'),
	"Y Gyro":(32,'i'),
	"X Gyro":(36,'i'),
}

# https://docs.novatel.com/OEM7/Content/Logs/RANGE.htm
# Size varies on this log so it is a bit tricky
# Has a long header
RANGEB = {
	"MsgID":43,
	"Length":44,
	"#OBS":(0,'I'),
	"PRN/slot":(4,'H'),
	"glofreq":(6,'H'),
	"psr":(8,'d'),
	"psr sig":(16,'f'),
	"adr":(20,'d'),
	"adr sig":(28,'f'),
	"dopp":(32,'f'),
	"C/No":(36,'f'),
	"locktime":(40,'f'),
	"ch-tr-status":(44,'I'),
	# Next PRN Offset: H + 4 + (#obs * 44)
}

# https://docs.novatel.com/OEM7/Content/Logs/BESTPOS.htm
# Has a long header
BESTPOSB = {
	"MsgID":42,
	"Length":72,
	"sol stat":(0,'I'),
	"pos type":(4,'I'),
	"lat":(8,'d'),
	"lon":(16,'d'),
	"hgt":(24,'d'),
	"undulation":(32,'f'),
	"datum id":(36,'I'),
	"lat std":(40,'f'),
	"lon std":(44,'f'),
	"hgt std":(48,'f'),
	"base station ID":(52,'4c'),
	"diff age":(56,'f'),
	"sol age":(60,'f'),
	"#SVs":(64,'B'),
	"#solSVs":(65,'B'),
	"#solL1SVs":(66,'B'),
	"#solMultiSVs":(67,'B'),
	"reserved":(68,'B'),
	"ext sol stat":(69,'B'),
	"galileo beidou sig mask":(70,'B'),
	"gps glonass sigmask":(71,'B'),
}

# https://docs.novatel.com/OEM7/Content/SPAN_Logs/BESTGNSSPOS.htm
# Same structure as BESTPOS
BESTGNSSPOSB = {
	"MsgID": 1429,
	"Length": 72
}


# Format ROS Messages
# Link for creating custom messages http://wiki.ros.org/ROS/Tutorials/CreatingMsgAndSrv#Creating_a_msg
# Existing ROS sensors messages https://docs.ros.org/en/melodic/api/sensor_msgs/html/index-msg.html

# Made from custom ROS message
def inspvas_rosmsg(msg_hex, header_hex):
	msg = INSPVAS()
	msg = populate_short_header(msg, header_hex)
	msg.gnss_week = Get_Value(msg_hex, INSPVASB["Week"])
	msg.gnss_seconds = Get_Value(msg_hex, INSPVASB["Seconds"])
	msg.latitude = Get_Value(msg_hex, INSPVASB["Latitude"])
	msg.longitude = Get_Value(msg_hex, INSPVASB["Longitude"])
	msg.altitude = Get_Value(msg_hex, INSPVASB["Height"])
	msg.north_velocity = Get_Value(msg_hex, INSPVASB["North Velocity"])
	msg.east_velocity = Get_Value(msg_hex, INSPVASB["East Velocity"])
	msg.up_velocity = Get_Value(msg_hex, INSPVASB["Up Velocity"])
	msg.roll = Get_Value(msg_hex, INSPVASB["Roll"])
	msg.pitch = Get_Value(msg_hex, INSPVASB["Pitch"])
	msg.azimuth = Get_Value(msg_hex, INSPVASB["Azimuth"])
	msg.ins_status = Get_Value(msg_hex, INSPVASB["Status"])
	return msg

# https://docs.ros.org/en/noetic/api/sensor_msgs/html/msg/Imu.html
# Now made from custom ROS msg but similar to Imu one
def rawimusx_rosmsg(hex_array, header_hex):
	msg = RAWIMUSX()
	msg = populate_short_header(msg, header_hex)
	msg.imu_info = Get_Value(hex_array, RAWIMUSXB["IMU Info"])
	msg.imu_type = Get_Value(hex_array, RAWIMUSXB["IMU Type"])
	msg.gnss_week = Get_Value(hex_array, RAWIMUSXB["GNSS Week"])
	msg.gnss_seconds = Get_Value(hex_array, RAWIMUSXB["GNSS Seconds"])
	msg.imu_status = Get_Value(hex_array, RAWIMUSXB["IMU Status"])
	msg.linear_acceleration.z = Get_Value(hex_array, RAWIMUSXB["Z Accel"])
	msg.linear_acceleration.y = Get_Value(hex_array, RAWIMUSXB["Y Accel"])
	msg.linear_acceleration.x = Get_Value(hex_array, RAWIMUSXB["X Accel"])
	msg.angular_velocity.z = Get_Value(hex_array, RAWIMUSXB["Z Gyro"])
	msg.angular_velocity.y = Get_Value(hex_array, RAWIMUSXB["Y Gyro"])
	msg.angular_velocity.x = Get_Value(hex_array, RAWIMUSXB["X Gyro"])
	return msg

# Made from custom ROS message
def range_rosmsg(msg_hex, header_hex):
	msg = RANGE()
	msg = populate_long_header(msg, header_hex)
	msg.num_obs = Get_Value(msg_hex, RANGEB["#OBS"])
	msg.prn = Get_Value(msg_hex, RANGEB["PRN/slot"])
	msg.glofreq = Get_Value(msg_hex, RANGEB["glofreq"])
	msg.psr = Get_Value(msg_hex, RANGEB["psr"])
	msg.psr_sig = Get_Value(msg_hex, RANGEB["psr sig"])
	msg.adr = Get_Value(msg_hex, RANGEB["adr"])
	msg.adr_sig = Get_Value(msg_hex, RANGEB["adr sig"])
	msg.dopp = Get_Value(msg_hex, RANGEB["dopp"])
	msg.c_no = Get_Value(msg_hex, RANGEB["C/No"])
	msg.locktime = Get_Value(msg_hex, RANGEB["ch-tr-status"])
	return msg

def bestpos_rosmsg(msg_hex, header_hex):
	msg = BESTPOS()
	msg = populate_long_header(msg, header_hex)
	msg.sol_stat = Get_Value(msg_hex, BESTPOSB["sol stat"])
	msg.pos_type = Get_Value(msg_hex, BESTPOSB["pos type"])
	msg.lat = Get_Value(msg_hex, BESTPOSB["lat"])
	msg.lon = Get_Value(msg_hex, BESTPOSB["lon"])
	msg.hgt = Get_Value(msg_hex, BESTPOSB["hgt"])
	msg.undulation = Get_Value(msg_hex, BESTPOSB["undulation"])
	msg.datum_id = Get_Value(msg_hex, BESTPOSB["datum id"])
	msg.lat_std = Get_Value(msg_hex, BESTPOSB["lat std"])
	msg.lon_std = Get_Value(msg_hex, BESTPOSB["lon std"])
	msg.hgt_std = Get_Value(msg_hex, BESTPOSB["hgt std"])
	msg.stn_id = Get_Value(msg_hex, BESTPOSB["base station ID"])
	msg.diff_age = Get_Value(msg_hex, BESTPOSB["diff age"])
	msg.sol_age = Get_Value(msg_hex, BESTPOSB["sol age"])
	msg.num_sats = Get_Value(msg_hex, BESTPOSB["#SVs"])
	msg.num_sol_sats = Get_Value(msg_hex, BESTPOSB["#solSVs"])
	msg.num_sol_l1_sats = Get_Value(msg_hex, BESTPOSB["#solL1SVs"])
	msg.num_sol_multi_sats = Get_Value(msg_hex, BESTPOSB["#solMultiSVs"])
	msg.reserved = Get_Value(msg_hex, BESTPOSB["reserved"])
	msg.ext_sol_stat = Get_Value(msg_hex, BESTPOSB["ext sol stat"])
	msg.galileo_beidou_sigmask = Get_Value(msg_hex, BESTPOSB["galileo beidou sig mask"])
	msg.gps_glonass_sigmask = Get_Value(msg_hex, BESTPOSB["gps glonass sigmask"])
	return msg

######################## Helper Functions #################################

def populate_long_header(rosmsg, header_hex):
	rosmsg.header.head_length = Get_Value(header_hex, LHEADER["Header Length"])
	rosmsg.header.id = Get_Value(header_hex, LHEADER["MsgID"])
	rosmsg.header.msg_type = Get_Value(header_hex, LHEADER["Message Type"])
	rosmsg.header.port_addr = Get_Value(header_hex, LHEADER["Port Address"])
	rosmsg.header.length = Get_Value(header_hex, LHEADER["Msg Length"])
	rosmsg.header.sequence = Get_Value(header_hex, LHEADER["Sequence"])
	rosmsg.header.idle_time = Get_Value(header_hex, LHEADER["Idle Time"])
	rosmsg.header.time_status = Get_Value(header_hex, LHEADER["Time Status"])
	rosmsg.header.gnss_week = Get_Value(header_hex, LHEADER["GNSS Week"])
	rosmsg.header.gnss_mili = Get_Value(header_hex, LHEADER["GNSS Mili"])
	rosmsg.header.reserved = Get_Value(header_hex, LHEADER["Reserved"])
	rosmsg.header.software_version = Get_Value(header_hex, LHEADER["Receiver S/W Version"])
	return rosmsg

def populate_short_header(rosmsg, header_hex):
	rosmsg.header.id = Get_Value(header_hex, SHEADER["MsgID"])
	rosmsg.header.length = Get_Value(header_hex, SHEADER["Msg Length"])
	rosmsg.header.gnss_week = Get_Value(header_hex, SHEADER["GNSS Week"])
	rosmsg.header.gnss_mili = Get_Value(header_hex, SHEADER["GNSS Mili"])
	return rosmsg

def print_all_fields(hex_array, log_dict):
	for key, value in log_dict:
		if type(value) == tuple:
			print(key + " " + Get_Value(hex_array, value))
		else: 
			print(key + " " + value)

# hex_array: an array of hex characters to read from
# loc: a two-value array or tuple, first value being the offset in bytes and second the length.
def Get_Value(hex_array, loc):
	hex_offset = loc[0]*HEX
	length = FORMATS[loc[1]]*HEX
	hex_subset = hex_array[hex_offset : hex_offset+length]
	return struct.unpack(loc[1],bytearray.fromhex(hex_subset))[0]
