# Long Binary Header NovAtel
# Author: Brandon Medellin
# Date: 2/1/2023

# Length of the header
uint8 head_length

# Message ID of the log being output
uint16 id

# Measurement source, format, response bit.
uint8 msg_type

# Port address
uint8 port_addr

# Message length not including header (25 bytes) nor CRC (4 bytes)
uint16 length

# Used for multiple related logs. It is a number that counts down from N-1 to 0 where N is the number of related logs ...
uint16 sequence

# Time the processor is idle, calculated once per second - more in documentation
uint8 idle_time

# Indicates the quality of the gps reference time
uint8 time_status

# GNSS week number
uint16 gnss_week

# GNSS Miliseconds from beginning of GNSS week
int32 gnss_mili

# Reserved for internal use
uint16 reserved

# A value (0-65535) representing the receiver software build number
uint16 software_version

