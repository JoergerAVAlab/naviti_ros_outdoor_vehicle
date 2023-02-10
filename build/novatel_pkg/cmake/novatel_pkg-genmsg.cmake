# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "novatel_pkg: 6 messages, 0 services")

set(MSG_I_FLAGS "-Inovatel_pkg:/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(novatel_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg" NAME_WE)
add_custom_target(_novatel_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "novatel_pkg" "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg" ""
)

get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RAWIMUSX.msg" NAME_WE)
add_custom_target(_novatel_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "novatel_pkg" "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RAWIMUSX.msg" "novatel_pkg/CommonShortHeader:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RANGE.msg" NAME_WE)
add_custom_target(_novatel_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "novatel_pkg" "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RANGE.msg" "novatel_pkg/CommonLongHeader"
)

get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg" NAME_WE)
add_custom_target(_novatel_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "novatel_pkg" "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg" ""
)

get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/BESTPOS.msg" NAME_WE)
add_custom_target(_novatel_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "novatel_pkg" "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/BESTPOS.msg" "novatel_pkg/CommonLongHeader"
)

get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/INSPVAS.msg" NAME_WE)
add_custom_target(_novatel_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "novatel_pkg" "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/INSPVAS.msg" "novatel_pkg/CommonShortHeader"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/novatel_pkg
)
_generate_msg_cpp(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RAWIMUSX.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/novatel_pkg
)
_generate_msg_cpp(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RANGE.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/novatel_pkg
)
_generate_msg_cpp(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/novatel_pkg
)
_generate_msg_cpp(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/BESTPOS.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/novatel_pkg
)
_generate_msg_cpp(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/INSPVAS.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/novatel_pkg
)

### Generating Services

### Generating Module File
_generate_module_cpp(novatel_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/novatel_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(novatel_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(novatel_pkg_generate_messages novatel_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_cpp _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RAWIMUSX.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_cpp _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RANGE.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_cpp _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_cpp _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/BESTPOS.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_cpp _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/INSPVAS.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_cpp _novatel_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(novatel_pkg_gencpp)
add_dependencies(novatel_pkg_gencpp novatel_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS novatel_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/novatel_pkg
)
_generate_msg_eus(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RAWIMUSX.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/novatel_pkg
)
_generate_msg_eus(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RANGE.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/novatel_pkg
)
_generate_msg_eus(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/novatel_pkg
)
_generate_msg_eus(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/BESTPOS.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/novatel_pkg
)
_generate_msg_eus(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/INSPVAS.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/novatel_pkg
)

### Generating Services

### Generating Module File
_generate_module_eus(novatel_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/novatel_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(novatel_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(novatel_pkg_generate_messages novatel_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_eus _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RAWIMUSX.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_eus _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RANGE.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_eus _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_eus _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/BESTPOS.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_eus _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/INSPVAS.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_eus _novatel_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(novatel_pkg_geneus)
add_dependencies(novatel_pkg_geneus novatel_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS novatel_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/novatel_pkg
)
_generate_msg_lisp(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RAWIMUSX.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/novatel_pkg
)
_generate_msg_lisp(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RANGE.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/novatel_pkg
)
_generate_msg_lisp(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/novatel_pkg
)
_generate_msg_lisp(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/BESTPOS.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/novatel_pkg
)
_generate_msg_lisp(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/INSPVAS.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/novatel_pkg
)

### Generating Services

### Generating Module File
_generate_module_lisp(novatel_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/novatel_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(novatel_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(novatel_pkg_generate_messages novatel_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_lisp _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RAWIMUSX.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_lisp _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RANGE.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_lisp _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_lisp _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/BESTPOS.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_lisp _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/INSPVAS.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_lisp _novatel_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(novatel_pkg_genlisp)
add_dependencies(novatel_pkg_genlisp novatel_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS novatel_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/novatel_pkg
)
_generate_msg_nodejs(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RAWIMUSX.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/novatel_pkg
)
_generate_msg_nodejs(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RANGE.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/novatel_pkg
)
_generate_msg_nodejs(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/novatel_pkg
)
_generate_msg_nodejs(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/BESTPOS.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/novatel_pkg
)
_generate_msg_nodejs(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/INSPVAS.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/novatel_pkg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(novatel_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/novatel_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(novatel_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(novatel_pkg_generate_messages novatel_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_nodejs _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RAWIMUSX.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_nodejs _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RANGE.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_nodejs _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_nodejs _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/BESTPOS.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_nodejs _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/INSPVAS.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_nodejs _novatel_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(novatel_pkg_gennodejs)
add_dependencies(novatel_pkg_gennodejs novatel_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS novatel_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/novatel_pkg
)
_generate_msg_py(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RAWIMUSX.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/novatel_pkg
)
_generate_msg_py(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RANGE.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/novatel_pkg
)
_generate_msg_py(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/novatel_pkg
)
_generate_msg_py(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/BESTPOS.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/novatel_pkg
)
_generate_msg_py(novatel_pkg
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/INSPVAS.msg"
  "${MSG_I_FLAGS}"
  "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/novatel_pkg
)

### Generating Services

### Generating Module File
_generate_module_py(novatel_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/novatel_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(novatel_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(novatel_pkg_generate_messages novatel_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonLongHeader.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_py _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RAWIMUSX.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_py _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/RANGE.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_py _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/CommonShortHeader.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_py _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/BESTPOS.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_py _novatel_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naviti/naviti_catkin_ws/src/novatel_pkg/msg/INSPVAS.msg" NAME_WE)
add_dependencies(novatel_pkg_generate_messages_py _novatel_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(novatel_pkg_genpy)
add_dependencies(novatel_pkg_genpy novatel_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS novatel_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/novatel_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/novatel_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(novatel_pkg_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(novatel_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/novatel_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/novatel_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(novatel_pkg_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(novatel_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/novatel_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/novatel_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(novatel_pkg_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(novatel_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/novatel_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/novatel_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(novatel_pkg_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(novatel_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/novatel_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/novatel_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/novatel_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(novatel_pkg_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(novatel_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
