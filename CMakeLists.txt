cmake_minimum_required(VERSION 2.6.3)
project(ns3-labs)

set(CMAKE_BUILD_TYPE "Debug")

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake")

FIND_PACKAGE(NS3 COMPONENTS
        ns3.25-aodv-debug
        ns3.25-applications-debug
        ns3.25-bridge-debug
        ns3.25-config-store-debug
        ns3.25-core-debug
        ns3.25-csma-layout-debug
        ns3.25-csma-debug
        ns3.25-dsdv-debug
        ns3.25-energy-debug
        ns3.25-flow-monitor-debug
        ns3.25-internet-debug
        ns3.25-lte-debug
        ns3.25-mesh-debug
        ns3.25-mobility-debug
        ns3.25-mpi-debug
        ns3.25-netanim-debug
        ns3.25-network-debug
        ns3.25-nix-vector-routing-debug
        ns3.25-olsr-debug
        ns3.25-point-to-point-layout-debug
        ns3.25-point-to-point-debug
        ns3.25-propagation-debug
        ns3.25-spectrum-debug
        ns3.25-stats-debug
        ns3.25-tap-bridge-debug
        ns3.25-test-debug
        ns3.25-topology-read-debug
        ns3.25-uan-debug
        ns3.25-virtual-net-device-debug
        ns3.25-visualizer-debug
        ns3.25-wimax-debug
        ns3.25-wifi-debug
        REQUIRED)

include_directories(${NS3_INCLUDE_DIRS})
link_directories(${NS3_LIBRARY_DIRS})
add_definitions(${NS3_DEFINITIONS})


link_libraries(
        ns3.25-aodv-debug
        ns3.25-applications-debug
        ns3.25-bridge-debug
        ns3.25-config-store-debug
        ns3.25-core-debug
        ns3.25-csma-layout-debug
        ns3.25-csma-debug
        ns3.25-dsdv-debug
        ns3.25-energy-debug
        ns3.25-flow-monitor-debug
        ns3.25-internet-debug
        ns3.25-lte-debug
        ns3.25-mesh-debug
        ns3.25-mobility-debug
        ns3.25-mpi-debug
        ns3.25-netanim-debug
        ns3.25-network-debug
        ns3.25-nix-vector-routing-debug
        ns3.25-olsr-debug
        ns3.25-point-to-point-layout-debug
        ns3.25-point-to-point-debug
        ns3.25-propagation-debug
        ns3.25-spectrum-debug
        ns3.25-stats-debug
        ns3.25-tap-bridge-debug
        ns3.25-test-debug
        ns3.25-topology-read-debug
        ns3.25-uan-debug
        ns3.25-virtual-net-device-debug
        ns3.25-visualizer-debug
        ns3.25-wimax-debug
        ns3.25-wifi-debug )


file(GLOB tutifruti_SOURCE
        src/qod/model/*.cpp
        src/Util.cpp
        src/main.cpp)

add_executable(tutifruti ${tutifruti_SOURCE} src/Util.cpp)


target_link_libraries(tutifruti
        ${NS3_LIBRARIES})
