;; Auto-generated. Do not edit!


(when (boundp 'ars_40X::RadarStatus)
  (if (not (find-package "ARS_40X"))
    (make-package "ARS_40X"))
  (shadow 'RadarStatus (find-package "ARS_40X")))
(unless (find-package "ARS_40X::RADARSTATUS")
  (make-package "ARS_40X::RADARSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RadarStatus.msg.html


(defclass ars_40X::RadarStatus
  :super ros::object
  :slots (_read_status _write_status _max_distance _persistent_error _interference _temperature_error _temporary_error _voltage_error _sensor_id _sort_index _radar_power_cfg _ctrl_relay_cfg _output_type_cfg _send_quality_cfg _send_ext_info_cfg _motion_rx_state _rcs_threshold ))

(defmethod ars_40X::RadarStatus
  (:init
   (&key
    ((:read_status __read_status) nil)
    ((:write_status __write_status) nil)
    ((:max_distance __max_distance) 0)
    ((:persistent_error __persistent_error) nil)
    ((:interference __interference) nil)
    ((:temperature_error __temperature_error) nil)
    ((:temporary_error __temporary_error) nil)
    ((:voltage_error __voltage_error) nil)
    ((:sensor_id __sensor_id) 0)
    ((:sort_index __sort_index) 0)
    ((:radar_power_cfg __radar_power_cfg) 0)
    ((:ctrl_relay_cfg __ctrl_relay_cfg) nil)
    ((:output_type_cfg __output_type_cfg) 0)
    ((:send_quality_cfg __send_quality_cfg) nil)
    ((:send_ext_info_cfg __send_ext_info_cfg) nil)
    ((:motion_rx_state __motion_rx_state) 0)
    ((:rcs_threshold __rcs_threshold) nil)
    )
   (send-super :init)
   (setq _read_status __read_status)
   (setq _write_status __write_status)
   (setq _max_distance (round __max_distance))
   (setq _persistent_error __persistent_error)
   (setq _interference __interference)
   (setq _temperature_error __temperature_error)
   (setq _temporary_error __temporary_error)
   (setq _voltage_error __voltage_error)
   (setq _sensor_id (round __sensor_id))
   (setq _sort_index (round __sort_index))
   (setq _radar_power_cfg (round __radar_power_cfg))
   (setq _ctrl_relay_cfg __ctrl_relay_cfg)
   (setq _output_type_cfg (round __output_type_cfg))
   (setq _send_quality_cfg __send_quality_cfg)
   (setq _send_ext_info_cfg __send_ext_info_cfg)
   (setq _motion_rx_state (round __motion_rx_state))
   (setq _rcs_threshold __rcs_threshold)
   self)
  (:read_status
   (&optional __read_status)
   (if __read_status (setq _read_status __read_status)) _read_status)
  (:write_status
   (&optional __write_status)
   (if __write_status (setq _write_status __write_status)) _write_status)
  (:max_distance
   (&optional __max_distance)
   (if __max_distance (setq _max_distance __max_distance)) _max_distance)
  (:persistent_error
   (&optional __persistent_error)
   (if __persistent_error (setq _persistent_error __persistent_error)) _persistent_error)
  (:interference
   (&optional __interference)
   (if __interference (setq _interference __interference)) _interference)
  (:temperature_error
   (&optional __temperature_error)
   (if __temperature_error (setq _temperature_error __temperature_error)) _temperature_error)
  (:temporary_error
   (&optional __temporary_error)
   (if __temporary_error (setq _temporary_error __temporary_error)) _temporary_error)
  (:voltage_error
   (&optional __voltage_error)
   (if __voltage_error (setq _voltage_error __voltage_error)) _voltage_error)
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:sort_index
   (&optional __sort_index)
   (if __sort_index (setq _sort_index __sort_index)) _sort_index)
  (:radar_power_cfg
   (&optional __radar_power_cfg)
   (if __radar_power_cfg (setq _radar_power_cfg __radar_power_cfg)) _radar_power_cfg)
  (:ctrl_relay_cfg
   (&optional __ctrl_relay_cfg)
   (if __ctrl_relay_cfg (setq _ctrl_relay_cfg __ctrl_relay_cfg)) _ctrl_relay_cfg)
  (:output_type_cfg
   (&optional __output_type_cfg)
   (if __output_type_cfg (setq _output_type_cfg __output_type_cfg)) _output_type_cfg)
  (:send_quality_cfg
   (&optional __send_quality_cfg)
   (if __send_quality_cfg (setq _send_quality_cfg __send_quality_cfg)) _send_quality_cfg)
  (:send_ext_info_cfg
   (&optional __send_ext_info_cfg)
   (if __send_ext_info_cfg (setq _send_ext_info_cfg __send_ext_info_cfg)) _send_ext_info_cfg)
  (:motion_rx_state
   (&optional __motion_rx_state)
   (if __motion_rx_state (setq _motion_rx_state __motion_rx_state)) _motion_rx_state)
  (:rcs_threshold
   (&optional __rcs_threshold)
   (if __rcs_threshold (setq _rcs_threshold __rcs_threshold)) _rcs_threshold)
  (:serialization-length
   ()
   (+
    ;; bool _read_status
    1
    ;; bool _write_status
    1
    ;; int16 _max_distance
    2
    ;; bool _persistent_error
    1
    ;; bool _interference
    1
    ;; bool _temperature_error
    1
    ;; bool _temporary_error
    1
    ;; bool _voltage_error
    1
    ;; int8 _sensor_id
    1
    ;; int8 _sort_index
    1
    ;; int8 _radar_power_cfg
    1
    ;; bool _ctrl_relay_cfg
    1
    ;; int8 _output_type_cfg
    1
    ;; bool _send_quality_cfg
    1
    ;; bool _send_ext_info_cfg
    1
    ;; int8 _motion_rx_state
    1
    ;; bool _rcs_threshold
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _read_status
       (if _read_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _write_status
       (if _write_status (write-byte -1 s) (write-byte 0 s))
     ;; int16 _max_distance
       (write-word _max_distance s)
     ;; bool _persistent_error
       (if _persistent_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _interference
       (if _interference (write-byte -1 s) (write-byte 0 s))
     ;; bool _temperature_error
       (if _temperature_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _temporary_error
       (if _temporary_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _voltage_error
       (if _voltage_error (write-byte -1 s) (write-byte 0 s))
     ;; int8 _sensor_id
       (write-byte _sensor_id s)
     ;; int8 _sort_index
       (write-byte _sort_index s)
     ;; int8 _radar_power_cfg
       (write-byte _radar_power_cfg s)
     ;; bool _ctrl_relay_cfg
       (if _ctrl_relay_cfg (write-byte -1 s) (write-byte 0 s))
     ;; int8 _output_type_cfg
       (write-byte _output_type_cfg s)
     ;; bool _send_quality_cfg
       (if _send_quality_cfg (write-byte -1 s) (write-byte 0 s))
     ;; bool _send_ext_info_cfg
       (if _send_ext_info_cfg (write-byte -1 s) (write-byte 0 s))
     ;; int8 _motion_rx_state
       (write-byte _motion_rx_state s)
     ;; bool _rcs_threshold
       (if _rcs_threshold (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _read_status
     (setq _read_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _write_status
     (setq _write_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _max_distance
     (setq _max_distance (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _persistent_error
     (setq _persistent_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _interference
     (setq _interference (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _temperature_error
     (setq _temperature_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _temporary_error
     (setq _temporary_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _voltage_error
     (setq _voltage_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _sensor_id
     (setq _sensor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _sensor_id 127) (setq _sensor_id (- _sensor_id 256)))
   ;; int8 _sort_index
     (setq _sort_index (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _sort_index 127) (setq _sort_index (- _sort_index 256)))
   ;; int8 _radar_power_cfg
     (setq _radar_power_cfg (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _radar_power_cfg 127) (setq _radar_power_cfg (- _radar_power_cfg 256)))
   ;; bool _ctrl_relay_cfg
     (setq _ctrl_relay_cfg (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _output_type_cfg
     (setq _output_type_cfg (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _output_type_cfg 127) (setq _output_type_cfg (- _output_type_cfg 256)))
   ;; bool _send_quality_cfg
     (setq _send_quality_cfg (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _send_ext_info_cfg
     (setq _send_ext_info_cfg (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _motion_rx_state
     (setq _motion_rx_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _motion_rx_state 127) (setq _motion_rx_state (- _motion_rx_state 256)))
   ;; bool _rcs_threshold
     (setq _rcs_threshold (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ars_40X::RadarStatus :md5sum-) "d6ad107409c19b7574ba9aa33a2c30f7")
(setf (get ars_40X::RadarStatus :datatype-) "ars_40X/RadarStatus")
(setf (get ars_40X::RadarStatus :definition-)
      "bool read_status
bool write_status
int16 max_distance
bool persistent_error
bool interference
bool temperature_error
bool temporary_error
bool voltage_error
int8 sensor_id
int8 sort_index
int8 radar_power_cfg
bool ctrl_relay_cfg
int8 output_type_cfg
bool send_quality_cfg
bool send_ext_info_cfg
int8 motion_rx_state
bool rcs_threshold

")



(provide :ars_40X/RadarStatus "d6ad107409c19b7574ba9aa33a2c30f7")


