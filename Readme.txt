Mp3 Jukebox For Raspberry Pi With Monitor Rotated Vertically
Put files in /home/pi/JukeBox

Prereqs on Rasbian:
a.) Libre Office Installed
b.) Vlc Installed
c.) Vlc configured to NOT loop and to close when track finishes (using vlc because it allows multiple tracks)
d.) Configure LibreOffice Impress with lowest macro security setting

Setup:
1.) Put all mp3 files in home/pi/Jukebox dir.
2.) Remove single quotes from song files.
3.) Give song files prefix 01,02,03 etc
4.) Create track list db: ls *.mp3 > track.txt
5.) Start LibreOffice Impress (Powerpoint) and run macro to update button text: UpdatePages 
6.) Run script :vertmouse.sh to change mouse to be vertical. (Mouse is top left (of 4) USB ports on pi

User Guide:
Click song button to play song
Click red button to stop song
Click central button to play all songs on page
Click bottom right clear button to stop slide show
Use arrow to navigate between three pages

Songs:
eg pip3 install pytube
python3 youtube.py XXXX

