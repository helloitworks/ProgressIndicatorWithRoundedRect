//
//  ProgressIndicatorWithRoundedRect.h
//  ProgressIndicatorWithRoundedRect
//
//  Created by shenyixin on 13-7-22.
//  Copyright (c) 2013年 http://www.helloitworks.com/. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ProgressIndicatorWithRoundedRect : NSProgressIndicator {
    NSColor *backgroundColor;
}

- (void)setBackGroundColor:(NSColor *)color;

- (void) drawRect:(NSRect)aRect;

@end
