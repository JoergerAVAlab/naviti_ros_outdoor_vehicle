# RANGE ID: 43
# Put RANGEB for binary when connected with NovAtel Application Suite
# Author: Brandon Medellin
# Date: 2/1/2023

novatel_pkg/CommonLongHeader header

# Total number of observations for the log uniquely identified by the PRN
uint32 num_obs

# ------------------------------------------------------------ 

# Satellite PRN number of range measurement
uint16 prn

# GLONASS Frequency + 7
uint16 glofreq

# Psuedorange measurement (m)
float64 psr

# Psuedorange measurement standard deviation (m)
float32 psr_sig

# Carrier phase, in cycles (accumulated Doppler range)
float64 adr

# Estimated carrier phase standard deviation (cycles)
float32 adr_sig

# Instantaneous carrier Doppler frequency (Hz)
float32 dopp

# Carrier to noise density ratio
float32 c_no

# Number of seconds of continuous tracking (no cycles slipping)
float32 locktime

# Tracking status 
uint32 ch_tr_status

# ------------------------------------------------------------

