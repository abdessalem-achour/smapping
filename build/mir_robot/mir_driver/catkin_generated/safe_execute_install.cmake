execute_process(COMMAND "/home/abdessalem/smapping/build/mir_robot/mir_driver/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/abdessalem/smapping/build/mir_robot/mir_driver/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
