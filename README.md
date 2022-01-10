# ACES Transforms
In this repository, I have made several IDTs and ODTs that can be used with DaVinci Resolve to add support for these cameras. In most cases, the IDT and ODT were based on the spec sheet provided by the camera manufacturer (this is the case when the spec sheet is in the `specs` folder). Otherwise, I have used some other method to create the transformation.

## Installing ACES Transform DCTLs in DaVinci Resolve
Download the IDTs and ODTs folders. On Windows and MacOS, put their contents in the `IDT` and `ODT` folders located in the following directories:
```
(Windows)
%AppData%\Roaming\Blackmagic Design\DaVinci Resolve\Support\ACES Transforms\

(MacOS)
~/Library/Application Support/Blackmagic Design/DaVinci Resolve/ACES Transformations/
```

For example, place the `Fuji F-Log ODT.dctl` file in the following folder on MacOS:
```
/Users/<your username>/Library/Application Support/Blackmagic Design/DaVinci Resolve/ACES Transformations/ODT/
```
or on Windows:
```
C:\Users\<your username>\AppData\Roaming\Blackmagic Design\DaVinci Resolve\Support\ACES Transforms\ODT\
```
Once you've done that, restart Resolve and they should show up in the ACES Transform node and in the color mangement settings.
