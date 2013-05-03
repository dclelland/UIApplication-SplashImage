//
//  UIApplication+SplashImage.m
//  TSOrdering
//
//  Created by Daniel Clelland on 3/05/13.
//  Copyright (c) 2013 Third Screen. All rights reserved.
//

#import "UIApplication+SplashImage.h"
#import "UIDevice+DeviceType.h"

@implementation UIApplication (SplashImage)

- (UIImage *)splashImage
{
    return [self splashImageForInterfaceOrientation:[[UIApplication sharedApplication] statusBarOrientation]];
}

- (UIImage *)splashImageForInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    NSString *splashImageName;
    
    switch ([[UIDevice currentDevice] deviceType]) {
        case TSDeviceType_iPad_Retina:
            if (UIInterfaceOrientationIsPortrait(interfaceOrientation)) {
                splashImageName = @"Default-Portrait@2x.png";
            } else {
                splashImageName = @"Default-Landscape@2x.png";
            }
            break;
            
        case TSDeviceType_iPad:
            if (UIInterfaceOrientationIsPortrait(interfaceOrientation)) {
                splashImageName = @"Default-Portrait.png";
            } else {
                splashImageName = @"Default-Landscape.png";
            }
            break;
            
        case TSDeviceType_iPhone_5:
            splashImageName = @"Default-568h@2x.png";
            break;
            
        case TSDeviceType_iPhone_4:
            splashImageName = @"Default@2x.png";
            break;
            
        case TSDeviceType_iPhone_3:
            splashImageName = @"Default.png";
            break;
            
        default:
            break;
    }
    
    return [UIImage imageNamed:splashImageName];
}

- (CGRect)splashImageFrame
{
    return [self splashImageFrameForInterfaceOrientation:[[UIApplication sharedApplication] statusBarOrientation]];
}

- (CGRect)splashImageFrameForInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    CGRect splashImageFrame;
    
    switch ([[UIDevice currentDevice] deviceType]) {
        case TSDeviceType_iPad_Retina:
        case TSDeviceType_iPad:
            if (UIInterfaceOrientationIsPortrait(interfaceOrientation)) {
                splashImageFrame = CGRectMake(0.0, 0.0, 768.0, 1004.0);
            } else {
                splashImageFrame = CGRectMake(0.0, 0.0, 1024.0, 748.0);
            }
            break;
            
        case TSDeviceType_iPhone_5:
            splashImageFrame = CGRectMake(0.0, -20.0, 320.0, 568.0);
            break;
            
        case TSDeviceType_iPhone_4:
        case TSDeviceType_iPhone_3:
            splashImageFrame = CGRectMake(0.0, -20.0, 320.0, 480.0);
            break;
            
        default:
            break;
    }
    
    return splashImageFrame;
}

@end