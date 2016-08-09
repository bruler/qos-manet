# Try to find the NS3 library.
#
# The user can hint a path using the NS3_HINT option.
#
# Once done, the following will be defined:
#
#  NS3_INCLUDE_DIRS - the NS3 include directories
#  NS3_LIBRARY_PATH - path to the libs
#  NS3_LIBRARIES - link these to use NS3 (full path to libs)
#
# This could be improved in many ways (patches welcome):
#  - No way to specify a minimal version (v3.10 is hardcoded).
#  - No proper find_package() integration

## ADDING A NS3 VERSION.
#   - Add ns3.${version}-core to the NAME line of the find_library below
#   - Add include/ns3{version} to the PATH_SUFFIXES line of the find_path below

set(HAVE_NS3 0)
set(NS3_HINT ${ns3_path} CACHE PATH "Path to search for NS3 lib and include")

find_library(NS3_LIBRARIES
  NAME ns3.25-core-debug
  PATH_SUFFIXES lib64 lib ns3/lib ns3.25/lib
  PATHS
  ${NS3_HINT}
  )

find_path(NS3_INCLUDE_DIR
  NAME ns3.25/ns3/core-module.h
  PATH_SUFFIXES include include/ns3.25
  PATHS
  ${NS3_HINT}
  )

if(NS3_INCLUDE_DIR)
  message(STATUS "Looking for ns3.25/ns3/core-module.h - found")
else()
  message(STATUS "Looking for ns3.25/ns3/core-module.h - not found")
endif()
mark_as_advanced(NS3_INCLUDE_DIR)

message(STATUS "Looking for lib ns3.25-core-debug")
if(NS3_LIBRARIES)
  message(STATUS "Looking for lib ns3.25-core-debug - found")
else()
  message(STATUS "Looking for lib ns3.25-core-debug - not found")
endif()
mark_as_advanced(NS3_LIBRARIES)

if(NS3_INCLUDE_DIR)
  if(NS3_LIBRARIES)
    set(HAVE_NS3 1)
    
    string(REGEX REPLACE ".*ns([.0-9]+)-core.*" "\\1" NS3_VERSION "${NS3_LIBRARIES}")
    get_filename_component(NS3_LIBRARY_PATH "${NS3_LIBRARIES}" PATH)

    # Compute NS3_PATH
    string(REGEX REPLACE "(.*)/lib" "\\1" NS3_PATH "${NS3_LIBRARY_PATH}")
    
    message(STATUS "NS-3 found (v3.${NS3_VERSION} in ${NS3_PATH}).")

    if (NOT NS3_LIBRARY_PATH STREQUAL "/usr/lib") 
      string(REGEX MATCH "${NS3_LIBRARY_PATH}" MatchResult "$ENV{LD_LIBRARY_PATH}")
      if(NOT MatchResult)
        message(STATUS "Warning: NS3 not installed in system path, and not listed in LD_LIBRARY_PATH." 
                       "         You want to: export LD_LIBRARY_PATH=${NS3_LIBRARY_PATH}\${LD_LIBRARY_PATH:+:\$LD_LIBRARY_PATH}")
      endif()
    endif()
  endif()
endif()
mark_as_advanced(NS3_LIBRARY_PATH)

if(HAVE_NS3)
  link_directories(${NS3_LIBRARY_PATH})
  include_directories(${NS3_INCLUDE_DIR})
else()
  message(STATUS "Warning: To use NS-3 Please install ns3 at least version 3.10 (http://www.nsnam.org/releases/)")
endif()
