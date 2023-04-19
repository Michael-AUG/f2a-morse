#F2A Morse sender for GB2CW
# (c) Michael Topple GM5AUG
# gm5aug@topple.scot

#!/bin/bash

DISPLAY=:0  #Overcomes an issue with not being able to access the soundcard on rig
echo Filename?
read varname # asks user to choose file to send
echo Speed?
read speed # asks user to choose speed to send (coupled with Farnsworth speed)
FILE=$varname
#if [[ -f foo ]]; then echo file exists; else echo file not found; fi
if test -f "$FILE"; then
    echo "$FILE exists."    # if the file exists
else
    echo "$FILE does not exist."    # if it doesn't
fi
xmlrpc localhost:54321 rig.set_mode FM-D   # accesses the rig through Flrig and sets mode to FM-D (to receive soundcard audio)
xmlrpc localhost:54321 rig.set_ptt i/1   # keys rig's PTT
morse -w $speed -F 13 -a < $varname  # runs morse app with chosen variables
xmlrpc localhost:54321 rig.set_ptt i/0   # unkeys rig's PTT
xmlrpc localhost:54321 rig.set_mode FM   # returns rig to FM
