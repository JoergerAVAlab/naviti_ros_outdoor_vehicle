# CORRIMUS Message ID: 2264
# Author: Brandon Medellin
# Date: 3/5/2023

novatel_pkg/CommonShortHeader header

# IMUDataCount
uint32 imu_data_count

# Linear Accelerations along Z, Y, X axes
geometry_msgs/Vector3 linear_acceleration

# Angular Velocity around Z, Y, X axes
geometry_msgs/Vector3 angular_velocity

# Reserved 1 (unsure what this is for, guessing a reserved spot for extra info)
float32 reserved_1

# Reserved 2 (unsure what this is for)
uint32 reserved_2 