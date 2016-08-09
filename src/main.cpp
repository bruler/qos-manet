#include "ns3/core-module.h"
#include "ns3/point-to-point-module.h"
#include "ns3/network-module.h"
#include "ns3/applications-module.h"
#include "ns3/wifi-module.h"
#include "ns3/mobility-module.h"
#include "ns3/csma-module.h"
#include "ns3/internet-module.h"
#include "ns3/netanim-module.h"

#include "Util.h"

using namespace ns3;

NS_LOG_COMPONENT_DEFINE ("hybrid MANET model");

int
main (int argc, char *argv[])
{
	Simulator::Run ();
	Simulator::Destroy ();
	return 0;
}
