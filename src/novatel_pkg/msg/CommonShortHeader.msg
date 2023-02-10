# Short Binary Header NovAtel OEM7
# Author: Brandon Medellin
# Date: 2/1/2023

# Message Length not including header (12 bytes) or CRC (4 byte)
uint8 length

# Message ID of the log being output.
uint16 id

# GNSS week number
uint16 gnss_week

# GNSS Miliseconds from beginning of GNSS week
int32 gnss_mili
