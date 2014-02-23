//
//  ProgressIndicatorWithRoundedRect.m
//  ProgressIndicatorWithRoundedRect
//
//  Created by shenyixin on 13-7-22.
//  Copyright (c) 2013年 http://www.helloitworks.com/. All rights reserved.
//

#import "ProgressIndicatorWithRoundedRect.h"

@implementation ProgressIndicatorWithRoundedRect

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)awakeFromNib
{
	//backgroundColor=[[NSColor colorWithCalibratedRed:23.0/256.0 green:156.0/256.0 blue:255.0/256.0 alpha:1.0] retain];
    backgroundColor = [NSColor redColor];
    //[self display];
    
}

- (void)setBackGroundColor:(NSColor *)color {
    if (backgroundColor != color) {
        [backgroundColor release];
        backgroundColor = [color retain];
    }
    [self setNeedsDisplay:YES];
}

                       
- (void)drawRect:(NSRect)dirtyRect
{
    
	NSImage *canvas = [[[NSImage alloc] initWithSize:[self bounds].size] autorelease];
    [canvas lockFocus];
    
    //外框
    //为了画出圆滑的矩形，需要移位一下
	NSRect canvasRect=NSMakeRect(0.5, 0.5, [canvas size].width-1, [canvas size].height-1);
    //canvasRect.size.height = 8;
    NSBezierPath *p = [NSBezierPath bezierPath];
	[p appendBezierPathWithRoundedRect:canvasRect xRadius:canvasRect.size.height/2 yRadius:canvasRect.size.height/2];
    [[NSColor darkGrayColor] set];
    [p setLineWidth:1];
	[p stroke];
    
    
    //里面填充的颜色
	NSRect slideRect = canvasRect;
	slideRect.size.width=slideRect.size.width*[self doubleValue]/[self maxValue];
    NSBezierPath *p1 = [NSBezierPath bezierPath];
	[p1 appendBezierPathWithRoundedRect:slideRect xRadius:canvasRect.size.height/2 yRadius:canvasRect.size.height/2];
    [backgroundColor set];
	[p1 fill];
    

	[canvas unlockFocus];
	[canvas drawInRect:dirtyRect fromRect:dirtyRect operation:NSCompositeSourceOver fraction:1];
}

- (BOOL)isFlipped
{
	return NO;
}

@end
