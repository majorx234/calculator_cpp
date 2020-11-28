# Find libmul_cpp
#
# Find the libmul_cpp includes and library
# 
# if you nee to add a custom library search path, do it via via CMAKE_PREFIX_PATH 
# 
# This module defines
#  LIBMUL_CPP_INCLUDE_DIRS, where to find header, etc.
#  LIBMUL_CPP_LIBRARIES, the libraries .
#  LIBMUL_CPP_FOUND, If false,
#  LIBMUL_CPP_INCLUDE_PREFIX,

# only look in default directories
find_path(
  LIBMUL_CPP_INCLUDE_DIR 
  NAMES libmul_cpp/mul.h
  DOC "libmul_cpp include dir"
)

find_library(
  LIBMUL_CPP_LIBRARY
  NAMES libmul_cpp.so
  DOC "libmul_cpp library"
)

set(LIBMUL_CPP_INCLUDE_DIRS ${LIBMUL_CPP_INCLUDE_DIR})
set(LIBMUL_CPP_LIBRARIES ${LIBMUL_CPP_LIBRARY})

# find LIBMUL_CPP_INCLUDE_PREFIX
find_path(
  LIBMUL_CPP_INCLUDE_PREFIX
  NAMES mul.h
  PATH_SUFFIXES libmul_cpp
)

# handle the QUIETLY and REQUIRED arguments and set LIBMUL_CPP_FOUND to TRUE
# if all listed variables are TRUE, hide their existence from configuration view
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(libmul_cpp DEFAULT_MSG
  LIBMUL_CPP_INCLUDE_DIR LIBMUL_CPP_LIBRARY)
mark_as_advanced (LIBMUL_CPP_INCLUDE_DIR LIBMUL_CPP_LIBRARY)