# INSPVAS Message ID: 508
# Author: Brandon Medellin
# Date: 2/1/2023

novatel_pkg/CommonShortHeader header

# IMU Info Bits 0 -> IMU Error Detected, 1 -> IMU data is encrypted, 2 to 7 -> Reserved
uint8 imu_info

# IMU Tyoe identifier
uint8 imu_type

# GNSS Week
uint16 gnss_week

# Seconds from GNSS week start
float64 gnss_seconds

# Status of the IMU
uint32 imu_status

# Linear Accelerations along Z, Y, X axes
geometry_msgs/Vector3 linear_acceleration

# Angular Velocity around Z, Y, X axes
geometry_msgs/Vector3 angular_velocity
