//
//  UIDevice+DeviceType.m
//  TSOrdering
//
//  Created by Daniel Clelland on 3/05/13.
//  Copyright (c) 2013 Third Screen. All rights reserved.
//

#import "UIDevice+DeviceType.h"

@implementation UIDevice (DeviceType)

- (TSDeviceType)deviceType;
{
    CGRect bounds = [[UIScreen mainScreen] bounds];
    CGFloat scale = [[UIScreen mainScreen] scale];
    
    switch ([[UIDevice currentDevice] userInterfaceIdiom]) {
        case UIUserInterfaceIdiomPad:
            if (scale > 1.0) {
                return TSDeviceType_iPad_Retina;
            } else {
                return TSDeviceType_iPad;
            }
            break;
        case UIUserInterfaceIdiomPhone:
            if (bounds.size.height > 480.0) {
                return TSDeviceType_iPhone_5;
            } else if (scale > 1.0) {
                return TSDeviceType_iPhone_4;
            } else {
                return TSDeviceType_iPhone_3;
            }
        default:
            return TSDeviceType_Unknown;
            break;
    }
}

@end
