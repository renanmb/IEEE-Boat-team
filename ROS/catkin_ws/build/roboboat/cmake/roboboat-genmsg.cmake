# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roboboat: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iroboboat:/home/boat-team/catkin_ws/src/roboboat/msg;-Inmea_msgs:/opt/ros/jade/share/nmea_msgs/cmake/../msg;-Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roboboat_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/boat-team/catkin_ws/src/roboboat/msg/MotorControl.msg" NAME_WE)
add_custom_target(_roboboat_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboboat" "/home/boat-team/catkin_ws/src/roboboat/msg/MotorControl.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/boat-team/catkin_ws/src/roboboat/msg/RelayControl.msg" NAME_WE)
add_custom_target(_roboboat_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboboat" "/home/boat-team/catkin_ws/src/roboboat/msg/RelayControl.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/boat-team/catkin_ws/src/roboboat/msg/BoatHealth.msg" NAME_WE)
add_custom_target(_roboboat_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboboat" "/home/boat-team/catkin_ws/src/roboboat/msg/BoatHealth.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roboboat
  "/home/boat-team/catkin_ws/src/roboboat/msg/MotorControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboboat
)
_generate_msg_cpp(roboboat
  "/home/boat-team/catkin_ws/src/roboboat/msg/RelayControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboboat
)
_generate_msg_cpp(roboboat
  "/home/boat-team/catkin_ws/src/roboboat/msg/BoatHealth.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboboat
)

### Generating Services

### Generating Module File
_generate_module_cpp(roboboat
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboboat
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roboboat_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roboboat_generate_messages roboboat_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boat-team/catkin_ws/src/roboboat/msg/MotorControl.msg" NAME_WE)
add_dependencies(roboboat_generate_messages_cpp _roboboat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boat-team/catkin_ws/src/roboboat/msg/RelayControl.msg" NAME_WE)
add_dependencies(roboboat_generate_messages_cpp _roboboat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boat-team/catkin_ws/src/roboboat/msg/BoatHealth.msg" NAME_WE)
add_dependencies(roboboat_generate_messages_cpp _roboboat_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboboat_gencpp)
add_dependencies(roboboat_gencpp roboboat_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboboat_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(roboboat
  "/home/boat-team/catkin_ws/src/roboboat/msg/MotorControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboboat
)
_generate_msg_eus(roboboat
  "/home/boat-team/catkin_ws/src/roboboat/msg/RelayControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboboat
)
_generate_msg_eus(roboboat
  "/home/boat-team/catkin_ws/src/roboboat/msg/BoatHealth.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboboat
)

### Generating Services

### Generating Module File
_generate_module_eus(roboboat
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboboat
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roboboat_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roboboat_generate_messages roboboat_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boat-team/catkin_ws/src/roboboat/msg/MotorControl.msg" NAME_WE)
add_dependencies(roboboat_generate_messages_eus _roboboat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boat-team/catkin_ws/src/roboboat/msg/RelayControl.msg" NAME_WE)
add_dependencies(roboboat_generate_messages_eus _roboboat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boat-team/catkin_ws/src/roboboat/msg/BoatHealth.msg" NAME_WE)
add_dependencies(roboboat_generate_messages_eus _roboboat_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboboat_geneus)
add_dependencies(roboboat_geneus roboboat_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboboat_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roboboat
  "/home/boat-team/catkin_ws/src/roboboat/msg/MotorControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboboat
)
_generate_msg_lisp(roboboat
  "/home/boat-team/catkin_ws/src/roboboat/msg/RelayControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboboat
)
_generate_msg_lisp(roboboat
  "/home/boat-team/catkin_ws/src/roboboat/msg/BoatHealth.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboboat
)

### Generating Services

### Generating Module File
_generate_module_lisp(roboboat
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboboat
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roboboat_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roboboat_generate_messages roboboat_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boat-team/catkin_ws/src/roboboat/msg/MotorControl.msg" NAME_WE)
add_dependencies(roboboat_generate_messages_lisp _roboboat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boat-team/catkin_ws/src/roboboat/msg/RelayControl.msg" NAME_WE)
add_dependencies(roboboat_generate_messages_lisp _roboboat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boat-team/catkin_ws/src/roboboat/msg/BoatHealth.msg" NAME_WE)
add_dependencies(roboboat_generate_messages_lisp _roboboat_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboboat_genlisp)
add_dependencies(roboboat_genlisp roboboat_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboboat_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roboboat
  "/home/boat-team/catkin_ws/src/roboboat/msg/MotorControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboboat
)
_generate_msg_py(roboboat
  "/home/boat-team/catkin_ws/src/roboboat/msg/RelayControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboboat
)
_generate_msg_py(roboboat
  "/home/boat-team/catkin_ws/src/roboboat/msg/BoatHealth.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboboat
)

### Generating Services

### Generating Module File
_generate_module_py(roboboat
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboboat
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roboboat_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roboboat_generate_messages roboboat_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boat-team/catkin_ws/src/roboboat/msg/MotorControl.msg" NAME_WE)
add_dependencies(roboboat_generate_messages_py _roboboat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boat-team/catkin_ws/src/roboboat/msg/RelayControl.msg" NAME_WE)
add_dependencies(roboboat_generate_messages_py _roboboat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boat-team/catkin_ws/src/roboboat/msg/BoatHealth.msg" NAME_WE)
add_dependencies(roboboat_generate_messages_py _roboboat_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboboat_genpy)
add_dependencies(roboboat_genpy roboboat_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboboat_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboboat)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboboat
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(roboboat_generate_messages_cpp nmea_msgs_generate_messages_cpp)
add_dependencies(roboboat_generate_messages_cpp std_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboboat)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboboat
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(roboboat_generate_messages_eus nmea_msgs_generate_messages_eus)
add_dependencies(roboboat_generate_messages_eus std_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboboat)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboboat
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(roboboat_generate_messages_lisp nmea_msgs_generate_messages_lisp)
add_dependencies(roboboat_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboboat)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboboat\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboboat
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(roboboat_generate_messages_py nmea_msgs_generate_messages_py)
add_dependencies(roboboat_generate_messages_py std_msgs_generate_messages_py)
