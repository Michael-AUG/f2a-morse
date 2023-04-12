#!/bin/bash
DISPLAY=:0
echo Filename?
read varname
FILE=$varname
#if [[ -f foo ]]; then echo file exists; else echo file not found; fi
if test -f "$FILE"; then
    echo "$FILE exists."
else
    echo "$FILE does not exist."
fi
xmlrpc localhost:54321 rig.set_mode FM-D
xmlrpc localhost:54321 rig.set_ptt i/1
morse -w 5 -F 13 -a < $varname
xmlrpc localhost:54321 rig.set_ptt i/0
xmlrpc localhost:54321 rig.set_mode FM
