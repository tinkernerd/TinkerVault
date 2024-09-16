---
tags:
  - DRS
  - DigitalReadSerial
  - "#Electronics"
  - Arduino
  - Small
  - Prototyping
title: Digital Read Serial
type: Article
topic:
  - Arduino
  - Tech
---
# [Digital Read Serial | Arduino Documentation](https://docs.arduino.cc/built-in-examples/basics/DigitalReadSerial/)

Read a switch, print the state out to the Arduino Serial Monitor.

Last revision 09/11/2024

This example shows you how to monitor the state of a switch by establishing [serial communication](https://www.arduino.cc/en/Reference/Serial) between your Arduino and your computer over USB.

### Hardware Required

-   Arduino Board
    
-   A momentary switch, button, or toggle switch
    
-   10k ohm resistor
    
-   hook-up wires
    
-   breadboard
    

### Circuit

![circuit](https://docs.arduino.cc/static/73702ee121860fa04c7f6db5bc77183b/a6d36/circuit.png)

Connect three wires to the board. The first two, red and black, connect to the two long vertical rows on the side of the breadboard to provide access to the 5 volt supply and ground. The third wire goes from digital pin 2 to one leg of the pushbutton. That same leg of the button connects through a pull-down resistor (here 10k ohm) to ground. The other leg of the button connects to the 5 volt supply.

Pushbuttons or switches connect two points in a circuit when you press them. When the pushbutton is open (unpressed) there is no connection between the two legs of the pushbutton, so the pin is connected to ground (through the pull-down resistor) and reads as LOW, or 0. When the button is closed (pressed), it makes a connection between its two legs, connecting the pin to 5 volts, so that the pin reads as HIGH, or 1.

If you disconnect the digital i/o pin from everything, its reading may change erratically. This is because the input is "floating" - that is, it doesn't have a solid connection to voltage or ground, and it will randomly return either HIGH or LOW. That's why you need a pull-down resistor in the circuit.

### Schematic

![schematic](https://docs.arduino.cc/static/86400cf9037a0a765bd8584fe48fad17/a6d36/schematic.png)

### Code

In the program below, the very first thing that you do will in the setup function is to begin serial communications, at 9600 bits of data per second, between your board and your computer with the line:

```
<span class="token-line" style="color: rgb(0, 0, 0);"><span class="token builtin" style="color: rgb(0, 112, 193);">Serial</span><span class="token punctuation" style="color: rgb(4, 81, 165);">.</span><span class="token function" style="color: rgb(0, 0, 255);">begin</span><span class="token punctuation" style="color: rgb(4, 81, 165);">(</span><span class="token number" style="color: rgb(9, 134, 88);">9600</span><span class="token punctuation" style="color: rgb(4, 81, 165);">)</span><span class="token punctuation" style="color: rgb(4, 81, 165);">;</span></span>
```

Next, initialize digital pin 2, the pin that will read the output from your button, as an input:

```
<span class="token-line" style="color: rgb(0, 0, 0);"><span class="token function" style="color: rgb(0, 0, 255);">pinMode</span><span class="token punctuation" style="color: rgb(4, 81, 165);">(</span><span class="token number" style="color: rgb(9, 134, 88);">2</span><span class="token punctuation" style="color: rgb(4, 81, 165);">,</span><span class="token constant" style="color: rgb(129, 31, 63);">INPUT</span><span class="token punctuation" style="color: rgb(4, 81, 165);">)</span><span class="token punctuation" style="color: rgb(4, 81, 165);">;</span></span>
```

Now that your setup has been completed, move into the main loop of your code. When your button is pressed, 5 volts will freely flow through your circuit, and when it is not pressed, the input pin will be connected to ground through the 10k ohm resistor. This is a digital input, meaning that the switch can only be in either an on state (seen by your Arduino as a "1", or HIGH) or an off state (seen by your Arduino as a "0", or LOW), with nothing in between.

The first thing you need to do in the main loop of your program is to establish a variable to hold the information coming in from your switch. Since the information coming in from the switch will be either a "1" or a "0", you can use an[](https://www.arduino.cc/reference/en/language/variables/data-types/int/)

```
<a href="https://www.arduino.cc/reference/en/language/variables/data-types/int/"><code class="token-line" style="color: rgb(0, 0, 0);"><span class="token-line" style="color: rgb(0, 0, 0);"><span class="token keyword" style="color: rgb(0, 0, 255);">int</span></span></code></a>
```

[datatype](https://www.arduino.cc/reference/en/language/variables/data-types/int/). Call this variable

```
<span class="token-line" style="color: rgb(0, 0, 0);"><span class="token plain">sensorValue</span></span>
```

, and set it to equal whatever is being read on digital pin 2. You can accomplish all this with just one line of code:

```
<span class="token-line" style="color: rgb(0, 0, 0);"><span class="token keyword" style="color: rgb(0, 0, 255);">int</span><span class="token plain"> sensorValue </span><span class="token operator" style="color: rgb(0, 0, 0);">=</span><span class="token plain"> </span><span class="token function" style="color: rgb(0, 0, 255);">digitalRead</span><span class="token punctuation" style="color: rgb(4, 81, 165);">(</span><span class="token number" style="color: rgb(9, 134, 88);">2</span><span class="token punctuation" style="color: rgb(4, 81, 165);">)</span><span class="token punctuation" style="color: rgb(4, 81, 165);">;</span></span>
```

Once the board has read the input, make it print this information back to the computer as a decimal value. You can do this with the command [Serial.println](https://www.arduino.cc/en/Serial/Println)() in our last line of code:

```
<span class="token-line" style="color: rgb(0, 0, 0);"><span class="token builtin" style="color: rgb(0, 112, 193);">Serial</span><span class="token punctuation" style="color: rgb(4, 81, 165);">.</span><span class="token function" style="color: rgb(0, 0, 255);">println</span><span class="token punctuation" style="color: rgb(4, 81, 165);">(</span><span class="token plain">sensorValue</span><span class="token punctuation" style="color: rgb(4, 81, 165);">)</span><span class="token punctuation" style="color: rgb(4, 81, 165);">;</span></span>
```

Now, when you open your Serial Monitor in the Arduino Software (IDE), you will see a stream of "0"s if your switch is open, or "1"s if your switch is closed.