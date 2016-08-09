# qosManet


In order to make ns3 work with cmake : 
<br>1. Install ns3 using tutorial from nsnam.org
<br>2. Install cmake >= 2.8
<br>3. Use the CMakeLists.txt and find file provided in cmake/ folder in the project


How to compile your scripts :
<br>1. Go into CMakeLists.txt
<br>2. In the line file(GLOB tutifruti_SOURCE ...
		mention the location of your script files in reference to root
		My files are in /src folder.

<br>3. In root, type these commands
	<br>> mkdir build
	<br>> cd build/
	<br>> cmake ../
	<br>> make
	<br>> ./tutifruti (or the name of your own built binary)

