# Information Summary

## project info
message(STATUS "")
message(STATUS "Project info.")
message(STATUS "PROJECT_NAME:                 ${PROJECT_NAME}")
message(STATUS "PROJECT_FULL_NAME:            ${PROJECT_FULL_NAME}")
message(STATUS "PACKAGE_VERSION:              ${PACKAGE_VERSION}")

## Options info
message(STATUS "")
message(STATUS "Options info.")
message(STATUS "TESTING:                      ${${PROJECT_NAME}_TESTING}")
message(STATUS "CONAN:                        ${${PROJECT_NAME}_CONAN}")
message(STATUS "DOXYGEN:                      ${${PROJECT_NAME}_DOXYGEN}")
message(STATUS "VERBOSE:                      ${${PROJECT_NAME}_VERBOSE}")
message(STATUS "CCACHE:                       ${${PROJECT_NAME}_CCACHE}")
message(STATUS "CPPCHECK:                     ${${PROJECT_NAME}_CPPCHECK}")
message(STATUS "VOID_PREFIX:                  ${${PROJECT_NAME}_VOID_PREFIX}")

## cmake info
message(STATUS "")
message(STATUS "CMake info.")
message(STATUS "CMAKE_INSTALL_PREFIX:         ${CMAKE_INSTALL_PREFIX}")
message(STATUS "PROJECT_DATADIR:              ${${PROJECT_NAME}_DATADIR}")
message(STATUS "CMAKE_INSTALL_LIBDIR:         ${CMAKE_INSTALL_LIBDIR}")
message(STATUS "CMAKE_SYSTEM_NAME:            ${CMAKE_SYSTEM_NAME}")
message(STATUS "CMAKE_SYSTEM_VERSION:         ${CMAKE_SYSTEM_VERSION}")
message(STATUS "CMAKE_SYSTEM_PROCESSOR:       ${CMAKE_SYSTEM_PROCESSOR}")
message(STATUS "CMAKE_CXX_COMPILER:           ${CMAKE_CXX_COMPILER}")
message(STATUS "CMAKE_BUILD_TYPE:             ${CMAKE_BUILD_TYPE}")
message(STATUS "PROJECT_SOURCE_DIR:           ${PROJECT_SOURCE_DIR}")
message(STATUS "CMAKE_MODULE_PATH:            ${CMAKE_MODULE_PATH}")
message(STATUS "CMAKE_PREFIX_PATH:            ${CMAKE_PREFIX_PATH}")

## Win32 info
if(WIN32)
	message(STATUS "")
	message(STATUS "Win32 info.")
	message(STATUS "HAVE_MINGW64:             ${HAVE_MINGW64}")
	message(STATUS "MINGW_PATH:               ${MINGW_PATH}")
	message(STATUS "MINGW_ARCH:               ${MINGW_ARCH}")
	message(STATUS "MINGW_ARCH_PATH:          ${MINGW_ARCH_PATH}")
endif()
