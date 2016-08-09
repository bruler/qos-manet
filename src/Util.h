//
// Created by cortana on 7/8/16.
//

#pragma once

#include "ns3/netanim-module.h"
#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/internet-module.h"
#include "ns3/applications-module.h"
#include "ns3/wifi-module.h"
#include "ns3/olsr-module.h"
#include "ns3/flow-monitor-module.h"
#include "ns3/mobility-module.h"


extern void courseChange (std::string position, ns3::Ptr<const ns3::MobilityModel> mobility);