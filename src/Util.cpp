//
// Created by cortana on 7/8/16.
//

#include "Util.h"

using namespace ns3;


void courseChange(std::string position, Ptr<const MobilityModel> mobility) {
    Vector pos = mobility->GetPosition ();
    Vector vel = mobility->GetVelocity ();

    std::cout << Simulator::Now () << ", model=" << mobility << ", POS: x=" << pos.x << ", y=" << pos.y
    << ", z=" << pos.z << "; VEL:" << vel.x << ", y=" << vel.y
    << ", z=" << vel.z << std::endl;
}