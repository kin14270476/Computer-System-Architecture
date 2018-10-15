![Cover Page](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/cover%20page.png)
# 1.0 Introduction

# 2.0 Poster
This poster is design to teach people about the subsystems of a computer, memory hierarchy, input/output system and the Von Neumann architecture.
## 2.1 Screenshot
![Poster](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/Computer%20Components%20King%20P1.jpg)
# 3.0 Traffic lights
The task of this tutorial is to teach you how to use the traffic light software which used for simulating pair of traffic lights.
## 3.1 Tutorial
When you first start the program it will close all the windows in the program and then a pop-up box which will show you the ram that this program has access to and what current address the programme is at. The next thing the program will do is set the variable of AL to 30 in hexadecimal.

![screenshot 1](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/screenshots/screen%20shot1.png)
The traffic lights work by an 8bit binary string in which the first 3 bit control the left traffic light whilst the next 3 bit would control the right traffic light and the last 2 bit do nothing. The first bit signals the red light to be on, the second bit would signal the yellow light and the third bit would signal the green light. An example of this would be the 10000100 which cause the left traffic light to be red and the right one to be green. As the software only accepts hexadecimal you need to convert the binary to hexadecimal so that you can send the value to the traffic lights. So if you used the previous example you would need to be 84 for it to turn the traffic light to the right colour.

![traffic light](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/screenshots/Traffic%20light.png)

Continuing on with the program, it now sends value that is stored in the variable AL which is 30 to port 1 which is the traffic light. After this has happens a new pop-up will which will show you the traffic lights with it being green on the left and red on the right.

![screenshot 13](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/screenshots/screen%20shot13.png)
Next the program will set the variable BL to 20 in hexadecimal which will be used in a loop later on.

![screenshot 2](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/screenshots/screen%20shot2.png)
The program will now go to the address 90 which is a procedure called Time Delay.

![screenshot 3](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/screenshots/screen%20shot3.png)
As you can see in the RAM Source Code View you can see that we have jumped to 90 on the address table instead of the normal A. This was done so that the Time delay procedure does not conflict with any of the other code. This procedure was created so that the traffic light will not instantly change but wait a period time.

![screenshot 4](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/screenshots/screen%20shot4.png)
Next it will decrease BL by 1 which you can see in the left of the program. It will then jump to Rep if BL is not 0.

![screenshot 5](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/screenshots/screen%20shot5.png)
This will cause a while loop to occur which will waste time of the CPU and allow the traffic light to stay their colour for a period of time which will be dependent on what value you put in the BL variable as this cause it to loop more times.

![screenshot 6](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/screenshots/screen%20shot6.png)
Here BL has reached 0 so it was able to break free of the while loop.

![screenshot 8](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/screenshots/screen%20shot8.png)
It will then restore the value that was in BL and return to the location before precedure happened which would be A in the address table.

![screenshot 9](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/screenshots/screen%20shot9.png)
Here it has set the value of AL to 50 whcih will turn the left traffic light yellow and the right one will be red.

![screenshot 10](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/screenshots/screen%20shot10.png)
As was stated before the left traffic light turned yellow and right one became red. This process will keep repeating it's self with the traffic light changing in to the correct colours and it will wait depending how big the BL value is.

![screenshot 11](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/screenshots/screen%20shot11.png)

![screenshot 13](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/screenshots/screen%20shot13.png)

![screenshot 14](https://github.com/kin14270476/Computer-System-Architecture/blob/master/Assignment%201/screenshots/screen%20shot14.png)

# 4.0 Evaluation of CPU operation
## 4.1 Evaluation of CPU performance within the 8 bit architecture of the simulator
## 4.2 ALU operation and interrupts
## 5.0 Conclusion

