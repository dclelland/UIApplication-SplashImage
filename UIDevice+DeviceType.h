//
//  UIDevice+DeviceType.h
//  TSOrdering
//
//  Created by Daniel Clelland on 3/05/13.
//  Copyright (c) 2013 Third Screen. All rights reserved.
//

typedef enum {
    TSDeviceType_iPad_Retina,
    TSDeviceType_iPad,
    TSDeviceType_iPhone_5,
    TSDeviceType_iPhone_4,
    TSDeviceType_iPhone_3,
    TSDeviceType_Unknown
} TSDeviceType;

#import <UIKit/UIKit.h>

@interface UIDevice (DeviceType)

- (TSDeviceType)deviceType;

@end