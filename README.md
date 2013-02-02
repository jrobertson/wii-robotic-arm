# Introducing the WiiRoboticArm gem

## Installation

You will need at least 1 libusb package and the wii-robotic-arm gem (`gem install wii-robotic-arm`).

    require 'wii-robotic-arm'

    wra = WiiRoboticArm.new
    wra.activate

## Commands

action | command
------------- | --------------------
base left     | button b + tilt left
base right    | button b + tilt right
shoulder up   | button a + tilt up
shoulder down | button a + tilt down
elbow up      | button b + tilt up
elbow down    | button b + tilt down
wrist up      | up arrow key
wrist down    | down arrow key
gripper open  | left arrow key
gripper close | right arrow key
LED on        | plus button (toggle on or off)
LED off       | plus button (toggle on or off)


Note: To move direction keep the button or combined buttons pressed.

I also made a short video of the [soldering using the robotic-arm + wiimote](http://www.jamesrobertson.eu/videos/2013/feb/02/video.ogv).

## Resources

* [Introducing the Robotic-arm gem](http://www.jamesrobertson.eu/snippets/2013/jan/29/introducing-the-robotic-arm-gem.html)
* [jrobertson/wii-robotic-arm](https://github.com/jrobertson/wii-robotic-arm)[GitHub]

