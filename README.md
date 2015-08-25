# AutonomousFlight

The goal of this project is to create point clouds in real time using SFM (Structure From Motion) with a monocular camera in order to avoid obsticles. 

##Ubuntu Install:
1. run install.sh

	```bash
	chmod u+x install.sh
	./install.sh
	```
2. run makeProject.sh

	```bash
	chmod u+x makeProject.sh
	./makeProject.sh
	```

##Mac Install:
1. run installOSX.sh

	```bash
	chmod u+x installOSX.sh
	./installOSX.sh
	```
2. install macports
3. install gcc with 
	```bash
	sudo port install gcc49
	```
	you may also need to execute the following commands as needed

	```bash
	sudo port -f activate libedit
	sudo port -f activate zlib
	``` 
4. run makeProjectOSX.sh

	```bash
	chmod u+x makeProjectOSX.sh
	./makeProjectOSX.sh
	```
