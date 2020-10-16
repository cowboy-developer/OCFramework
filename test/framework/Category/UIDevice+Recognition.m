//
//  UIDevice+Recognition.m
//  Bper
//
//  Created by Adam on 15/11/3.
//  Copyright © 2015年 haoliantech. All rights reserved.
//

#import "UIDevice+Recognition.h"
#import "Constant.h"
@implementation UIDevice (Recognition)

+ (BOOL)runningiPhone4s {
    //640.000000---960.000000“
    if (SCREEN_WIDTH * SCREEN_SCALE == 640.0
        && SCREEN_HEIGHT * SCREEN_SCALE == 960.0) {
        return YES;
    }
    return NO;
}


+ (BOOL)runningiPhone5 {
    //640.000000---1136.000000
    if (SCREEN_WIDTH * SCREEN_SCALE == 640.0
        && SCREEN_HEIGHT * SCREEN_SCALE == 1136.0) {
        return YES;
    }
    return NO;
}

+ (BOOL)runningiPhone5s {
    return [self runningiPhone5];
}

+ (BOOL)runningiPhone6 {
    //    750.000000---1334.000000
    if (SCREEN_WIDTH * SCREEN_SCALE == 750.0
        && SCREEN_HEIGHT * SCREEN_SCALE == 1334.0) {
        return YES;
    }
    return NO;
}

+ (BOOL)runningiPhone6p {
    //    1242.000000---2208.000000
    if ( (NSInteger)(SCREEN_WIDTH * SCREEN_SCALE) == 1242
        && (NSInteger)(SCREEN_HEIGHT * SCREEN_SCALE) == 2208) {
        return YES;
        
    }
    return NO;
}

+ (BOOL)runningIpadAir2
{
    //    1242.000000---2208.000000
    if ( (NSInteger)(SCREEN_WIDTH * SCREEN_SCALE) == 1536
        && (NSInteger)(SCREEN_HEIGHT * SCREEN_SCALE) == 2048) {
        return YES;
        
    }
    return NO;
}

@end
