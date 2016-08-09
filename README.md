# qosManet

<br><br>
In order to make ns3 work with cmake :
<br>&ensp;&ensp;&ensp;1. Install ns3 using tutorial from nsnam.org
<br>&ensp;&ensp;&ensp;2. Install cmake >= 2.8
<br>&ensp;&ensp;&ensp;3. Use the CMakeLists.txt and find file provided in cmake/ folder in the project


How to compile your scripts :
<br>&ensp;&ensp;&ensp;1. Go into CMakeLists.txt
<br>&ensp;&ensp;&ensp;2. In the line file(GLOB tutifruti_SOURCE ...
<br>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;mention the location of your script files in reference to root
<br>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;My files are in /src folder.

<br>&ensp;&ensp;&ensp;3. In root, type these commands
	<br>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;> &ensp;mkdir build
	<br>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;> &ensp;cd build/
	<br>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;> &ensp;cmake ../
	<br>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;> &ensp;make
	<br>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;> &ensp;./tutifruti (or the name of your own built binary)

