//
//  UIApplication+SplashImage.h
//  TSOrdering
//
//  Created by Daniel Clelland on 3/05/13.
//  Copyright (c) 2013 Third Screen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (SplashImage)

- (UIImage *)splashImage;
- (UIImage *)splashImageForInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;

- (CGRect)splashImageFrame;
- (CGRect)splashImageFrameForInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;

@end
