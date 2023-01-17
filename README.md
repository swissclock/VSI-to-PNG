# VSI-to-PNG

ImageJ Macro script to automatically convert VSI files (Olympus file format) to PNG images

# Installation

In Imagej, choose Plugins > Macros > Install
and choose the script

# Usage 

For batch conversion:

Make sure the vsi files and their stack folder are under the same directory.

Install vsi2pngbatch and run the script

Choose the input folder with the vsi files

Choose an output folder to save the png files

# Troubleshoot

To change/reorder the image series or channels, open the script in a text editor,
edit the required series number (line 8, the defualt is 2) and the order of the channels
(default: channel 0 - blue; channel 1 - red).

To correct brightness/saturation, edit lines 13 and 16 for custom values (defualt is auto). 

For single files:

Make sure the vsi files and their stack folder are under the same directory.

Install vsi2png and run the script

Choose the input vsi file

Choose an output folder to save the png file
