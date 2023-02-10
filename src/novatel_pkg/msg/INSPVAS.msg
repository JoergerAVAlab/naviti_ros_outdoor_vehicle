# INSPVAS Message ID: 508
# Author: Brandon Medellin
# Date: 2/1/2023

novatel_pkg/CommonShortHeader header

uint32 gnss_week
float64 gnss_seconds

float64 latitude
float64 longitude
float64 altitude

float64 north_velocity
float64 east_velocity
float64 up_velocity

float64 roll
float64 pitch
float64 azimuth

# Table 29 in the SPAN on OEM6 manual:
# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=121
uint32 ins_status
