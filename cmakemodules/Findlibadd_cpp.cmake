# Find libadd_cpp
#
# Find the libadd_cpp includes and library
# 
# if you nee to add a custom library search path, do it via via CMAKE_PREFIX_PATH 
# 
# This module defines
#  LIBADD_CPP_INCLUDE_DIRS, where to find header, etc.
#  LIBADD_CPP_LIBRARIES, the libraries .
#  LIBADD_CPP_FOUND, If false,
#  LIBADD_CPP_INCLUDE_PREFIX,

# only look in default directories
find_path(
  LIBADD_CPP_INCLUDE_DIR 
  NAMES libadd_cpp/add.h
  DOC "libadd_cpp include dir"
)

find_library(
  LIBADD_CPP_LIBRARY
  NAMES libadd_cpp.so
  DOC "libadd_cpp library"
)

set(LIBADD_CPP_INCLUDE_DIRS ${LIBADD_CPP_INCLUDE_DIR})
set(LIBADD_CPP_LIBRARIES ${LIBADD_CPP_LIBRARY})

# find LIBADD_CPP_INCLUDE_PREFIX
find_path(
  LIBADD_CPP_INCLUDE_PREFIX
  NAMES add.h
  PATH_SUFFIXES libadd_cpp
)

# handle the QUIETLY and REQUIRED arguments and set LIBADD_CPP_FOUND to TRUE
# if all listed variables are TRUE, hide their existence from configuration view
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(libadd_cpp DEFAULT_MSG
  LIBADD_CPP_INCLUDE_DIR LIBADD_CPP_LIBRARY)
mark_as_advanced (LIBADD_CPP_INCLUDE_DIR LIBADD_CPP_LIBRARY)
