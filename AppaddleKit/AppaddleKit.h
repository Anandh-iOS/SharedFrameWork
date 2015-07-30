//
//  AppaddleKit.h
//  AppaddleKit
//
//  Created by Ayyanar on 22/07/15.
//  Copyright (c) 2015 Mobifluence. All rights reserved.
//

#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#elif TARGET_OS_MAC
#import <Cocoa/Cocoa.h>
#endif

//! Project version number for AppaddleKit.
FOUNDATION_EXPORT double AppaddleKitVersionNumber;

//! Project version string for AppaddleKit.
FOUNDATION_EXPORT const unsigned char AppaddleKitVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <AppaddleKit/PublicHeader.h>

#import <AppaddleKit/Appaddle.h>

#if TARGET_OS_IPHONE
#import <AppaddleKit/AppaddleKitIOS.h>
#elif TARGET_OS_MAC
#import <AppaddleKit/AppaddleKitOSX.h>
#endif
