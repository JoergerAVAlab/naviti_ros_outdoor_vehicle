# CORRIMUDATAS Message ID: 813
# Author: Brandon Medellin
# Date: 3/13/2023

novatel_pkg/CommonShortHeader header

# GNSS Week
uint32 gnss_week

# Seconds from GNSS week start
float64 gnss_seconds

# Linear Accelerations along Z, Y, X axes
geometry_msgs/Vector3 linear_acceleration

# Angular Velocity around Z, Y, X axes
geometry_msgs/Vector3 angular_velocity
