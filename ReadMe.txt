CPE-476 Tasks
Task 1: Description of the Mobile Robot - Include documentation and reference to datasheets, images, assembly instructions, etc. 
Reference to datasheets 
	Romi32U4 Board 
	- https://www.pololu.com/file/0J1258/romi-32u4-control-board-schematic-diagram.pdf 
	- https://www.pololu.com/file/0J1261/romi-32u4-control-board-pinout-power.pdf 
	Romi Encoder 
	- https://www.pololu.com/file/0J1208/romi-encoder-pair-kit-schematic-diagram.pdf 
	- https://www.pololu.com/file/0J1210/romi-encoder-dimension-diagram.pdf 
	Wheel Motor 
	- https://www.pololu.com/file/0J822/mini-plastic-gearmotor-90-degree-dimension-diagram.pdf
Assembly Instructions
	Romi Chassis Assembly
	-https://www.pololu.com/docs/0J68/4
	Mounting Romi32U4 Board
	-https://www.pololu.com/product/3544#lightbox-picture0J7519
	Mounting Raspberry Pi
	-https://www.pololu.com/product/3544/pictures#lightbox-picture0J7520
Images of Components 
	Romi32U4 Board  
	-https://www.pololu.com/product/3544/pictures#lightbox-picture0J7510					
	Romi Chassis Kit (Assembled) 
	-https://www.pololu.com/product/3500/pictures#lightbox-picture0J7260						
	Romi Encoder Pair Kit 
	-https://www.pololu.com/product/3542/pictures#lightbox-picture0J9433
	Wheel Motor 		
	-https://www.pololu.com/product/1520/pictures#lightbox-picture0J5896
	Raspberry Pi 3 Model B+ 
	-https://www.pololu.com/product/2797/pictures#lightbox-picture0J8922


Task 2: Motor and Encoder Testing - In this task, the team will perform basic tests for the motor (proper forward, backward, right and left motion), and encoder operations. 
- For this task we ran the Encoder test and Motor test. Both tests ran fine.
    Encoder Test: For this test, we ran a program that received feedback data from the encoders 
    which told us how far the wheels are turning and in which direction 
    -https://github.com/bkokubun99/CPE-476-Mobile-Robotics/blob/master/RasPiBot202V2/examples/TestEncoders/TestEncoders.ino
    Motor Test: For this test, we ran a program that allows the Romi to move forward/backward for a particular motor speed 
    when a certain button is pressed 
    -https://github.com/bkokubun99/CPE-476-Mobile-Robotics/blob/master/RasPiBot202V2/examples/TestMotors/TestMotors.ino
 
Task 3: Wheel Calibration (fix systematic errors) - The goal of this task will be to move your robot using built-in commands for a distance of 2 meters. Determine the trim values of the motor such that the robot travels in a straight line. 
- Since the Wheel Motors came factory built, when we ran our Motor Test we noticed that the right motor was spinning at a faster speed than the left motor, about 2% faster. This caused the Romi to veer to the left when it was supposed to go move straight. After minimal calibrations and determining which values to trim, our Romi was able to move in a straight path. 
    Odometer Test: For this test, we were able to determine the trim values in order for our Romi to move in a straight path 
    -https://github.com/bkokubun99/CPE-476-Mobile-Robotics/blob/master/RasPiBot202V2/examples/TestOdometer/TestOdometer.ino
    Motor Test: For this test, the right motor spinning about 2% faster than the left. Therefore we had to trim the values of
    the right motor. 
    -https://github.com/bkokubun99/CPE-476-Mobile-Robotics/blob/master/RasPiBot202V2/examples/TestMotors/TestMotors.ino
	
Task 4: Unidirectional & Bidirectional Square Path Experiment - In this task the robot, follows a path comprising of four straight line segments and four pure rotations about the robot's center point, at the corners of the square. The robot's end position visualizes the dead-reckoning error. 
-For this task we had the Romi drive straight for a meter, then with trial and error determined the speed/time it would take in order for the robot to turn a perfect 90 degrees using speed of motorA = -speed of motorB. This worked for us and the robot made a perfect square path.

Task 5: PID Control - Implement PID control to offset unknown tracking errors. Use supplied K values. You can modify them later. 
-For this task we ran the PID example found here https://gist.github.com/bradley219/5373998. With a few modifications it ran.
    PID Test:PID program, allowed us to offset unknown tracking errors. 
    -https://github.com/bkokubun99/CPE-476-Mobile-Robotics/blob/master/PID/pid.cpp

Task 6: Dead Reckoning - Using the of motor encoder values, calculate the robot's position and pose for the motor basic test. 
-For this task we used https://github.com/purwar2016/DeadReckoning-library and applied it to the motor test. with many modifications we were able to program our Romi board.

Task 7: Interface IMU: Interface the IMU on the board to get acceleration and gyro values. Create a message including odometry and IMU values and transmit the message to the Host PC and log the data in Rviz. 
-For this task we used https://github.com/pololu/romi-32u4-arduino-library. Acceleration was fine. We did have issues with the gyro values at first, but ended up replacing our board for other purposes. After this the gyro values were fine.
	Odemetry Test: This Test allowed us to measure the pose of the Romi 
    -https://github.com/bkokubun99/CPE-476-Mobile-Robotics/blob/master/Romi-RPi-I2CSlave/odometry.ino

Task 8:

Task 9: Setup your RPI: Use the raspberry pi 3+/4 to setup Raspbian + ROS (Kinetic/Melodic) + OpenCV. 
-For the OS on our RPI3 we installed Ubiquity's https://downloads.ubiquityrobotics.com/pi.html. This made the process very simple. We then expanded the memory, enabled ssh, and made other changes to settings following along in class.
