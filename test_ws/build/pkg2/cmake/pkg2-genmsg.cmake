# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pkg2: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ipkg2:/home/flamehog/test_ws/src/pkg2/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators

add_custom_target(pkg2_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/flamehog/test_ws/src/pkg2/msg/array1d.msg" NAME_WE)
add_custom_target(_pkg2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg2" "/home/flamehog/test_ws/src/pkg2/msg/array1d.msg" ""
)

get_filename_component(_filename "/home/flamehog/test_ws/src/pkg2/msg/array2d.msg" NAME_WE)
add_custom_target(_pkg2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg2" "/home/flamehog/test_ws/src/pkg2/msg/array2d.msg" "pkg2/array1d"
)

#
#  langs = 
#


