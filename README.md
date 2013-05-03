UIApplication-SplashImage
=========================

Simple UIApplication category for accessing splash images. Useful, say, if you want to have an initial loading screen which transitions seamlessly into the first view to be displayed.

It can also return an appropriate frame for said loading screen, assuming a status bar is being displayed (I ought to expand upon this).

Depends upon UIDevice+DeviceType - another hacky category which queries the UIScreen's bounds and scale to return one of five basic TSDeviceTypes:

- TSDeviceType_iPad_Retina
- TSDeviceType_iPad
- TSDeviceType_iPhone_5
- TSDeviceType_iPhone_4
- TSDeviceType_iPhone_3

This makes it easier to write switch cases, for instance.