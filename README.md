# ACES Transforms
In this repository, I have made several IDTs and ODTs that can be used with DaVinci Resolve to add support for these cameras. In most cases, the IDT and ODT were based on the spec sheet provided by the camera manufacturer (this is the case when the spec sheet is in the `specs` folder). Otherwise, I have used some other method to create the transformation.

Support me at: [https://www.buymeacoffee.com/thatcherfreeman](https://www.buymeacoffee.com/thatcherfreeman)

## Current supported Log curves
IDTs and ODTs are provided for the following log curves/image profiles:

- Apple Log
- DJI D-Log
- DaVinci Intermediate
- Fuji F-Log
- Fuji F-Log2
- Fuji F-Log2 C
- GoPro ProTune Native, Color Profile
- GoPro ProTune Native, Flat Profile
- JPLog2
- Leica L-Log
- Nikon N-Log
- Phantom Log1
- Phantom Log2
- ZCAM Z-Log2

## Display ODTs
The RRT and Display transform code is pretty directly lifted straight from [ACES 1.3](https://github.com/ampas/aces-core/tree/1256fee50ee35548c6eab8eca854ff3349008489/).

## Installing ACES Transform DCTLs in DaVinci Resolve
Download the IDTs and ODTs folders. On Windows and MacOS, put their contents in the `IDT` and `ODT` folders located in the following directories:
```
(Windows)
%AppData%\Roaming\Blackmagic Design\DaVinci Resolve\Support\ACES Transforms\

(MacOS)
[YOUR USER DIRECTORY]/Library/Application Support/Blackmagic Design/DaVinci Resolve/ACES Transforms/
```
**Note: On both Windows and MacOS, these are hidden directories! You may need to show hidden directories to navigate to them.**

For example, place the `Fuji F-Log ODT.dctl` file in the following folder on MacOS:
```
/Users/<your username>/Library/Application Support/Blackmagic Design/DaVinci Resolve/ACES Transforms/ODT/
```
or on Windows:
```
C:\Users\<your username>\AppData\Roaming\Blackmagic Design\DaVinci Resolve\Support\ACES Transforms\ODT\
```
Once you've done that, restart Resolve and they should show up in the ACES Transform node and in the color mangement settings.

## Linear to Log Conversions
If you're starting from linear EXR files and have a resize step to get to your timeline resolution, and your resize algorithm selected in Resolve is one that sharpens the image and therefore has negative lobes (ie "Sharper", Lacsoz, etc), then this resize step will push negative values into the image. As a result, you need to resize while in a log space.

If you're in node-based color management, the only opportunities you have to do that linear to log conversion are:
1. Right click on a clip and choose an "Input LUT", and choose a DCTL that converts from linear to some log space. The selected Input LUT is applied to the clip's source resolution and therefore lies before Edit Sizing/Color Page Input Sizing.
2. Use the Fusion page to handle the conversion (slow)

For your convenience, I have created a folder called "Linear to Log Conversions" that you can put into your conventional LUT directory and therefore make these DCTLs accessible via the Input LUT right click menu.

## Matrix calculator
I used [this too](https://www.colour-science.org:8010/apps/rgb_colourspace_transformation_matrix) to calculate the matrices here. Set it to CAT02 chromatic adaptation.