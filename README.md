# qosManet


In order to make ns3 work with cmake : 
1. Install ns3 using tutorial from nsnam.org
2. Install cmake >= 2.8
3. Use the CMakeLists.txt and find file provided in cmake/ folder in the project


How to compile your scripts :
1. Go into CMakeLists.txt
2. In the line file(GLOB tutifruti_SOURCE ...
		mention the location of your script files in reference to root
		My files are in /src folder.

3. In root, type these commands
	> mkdir build
	> cd build/
	> cmake ../
	> make
	> ./tutifruti (or the name of your own built binary)

