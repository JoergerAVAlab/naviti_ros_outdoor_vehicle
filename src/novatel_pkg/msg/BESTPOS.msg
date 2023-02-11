# INSPVAS Message ID: 42
# Author: Brandon Medellin
# Date: 2/10/2023

novatel_pkg/CommonLongHeader header

# Solution Status 
uint32 sol_stat

# Position type
uint32 pos_type

# Latitude 
float64 lat

# Longitude
float64 lon

# Height above mean sea level (metres)
float64 hgt

# undulation
float32 undulation

# Datum ID Number 
uint32 datum_id

# Latitude statdard dev
float32 lat_std

# Longitude standard dev
float32 lon_std

# Height standard dev 
float32 hgt_std

# Base station ID 
string stn_id

# Differential age in seconds
float32 diff_age

# Solution age in seconds
float32 sol_age

# Number of Satellites tracked 
uint8 num_sats

# Number of satellites used in solution 
uint8 num_sol_sats

# Number of satellites  with L1/E1/B1 signals used in solution
uint8 num_sol_l1_sats

# Number of satellites with multi-frequency signals used in solution
uint8 num_sol_multi_sats

# Reserved
uint8 reserved

# ext sol stat 
uint8 ext_sol_stat

# Galileo and BeiDou sig mask 
uint8 galileo_beidou_sigmask

# GPS and GLONASS sig mask
uint8 gps_glonass_sigmask