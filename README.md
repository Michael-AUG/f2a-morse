# f2a-morse
A simple shell script to combine morse and xmlrpc controls for Flrig.

I designed this simple script to help with my Amateur Radio GB2CW transmissions. I wanted to
be able to send reliably sped CW using F2A (Morse code over FM) for others in the local area to 
hear and decode.

Ordinarily I would either send manually (on a key), or if needed use a computer programme. However
neither of these options work with FM.

To get round this, I use the morse application (https://gitlab.com/esr/morse-classic) to generate
the Morse audio within the Terminal, and use xmlrpc control of Flrig to 
a) set the rig mode to FM-D
b) key the PTT
c) cut the PTT
d) return the rig mode to FM

For this to work, you must have Flrig running, and take note of the server port in the Config menu.

In the file ptt.sh, be sure to change the port number (set as 54321) to whatever number is in the
Config menu. Alternatively change the port number to 54321!

The script is designed to send text files, which I tend to name a,b,c,d etc. These files need to be
stored in the same folder as the ptt.sh script. Run the file ($ sh ptt.sh) and, at the prompt,
choose the filename (ie. a). At the next prompt choose the overall wordspeed you wish to send at.
Note the programme is designed to send 13wpm characters, but these are slowed down using the
Farnsworth method to whatever speed you choose at the prompt.

If the filename you choose does not exist, the script will return an error. Otherwise the radio
should change to FM-D, key up, send the Morse, key down and return to FM.

If you've got any questions or queries, please contact me. I am not the writer of the 'morse'
software so please direct any 'morse' related queries directly to the team there. This script is
a real bodge or fudge, and I don't claim to be overly good at coding. However, if it helps you, 
please let me know!

73 and happy Morsing!

Michael Topple GM5AUG
email: gm5aug@topple.scot
