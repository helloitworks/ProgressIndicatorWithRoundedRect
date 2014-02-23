//
//  AppDelegate.h
//  ProgressIndicatorWithRoundedRect
//
//  Created by shenyixin on 13-7-22.
//  Copyright (c) 2013年 http://www.helloitworks.com/. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ProgressIndicatorWithRoundedRect.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet ProgressIndicatorWithRoundedRect *progressIndicator;
@property (assign) IBOutlet NSPopUpButton *popColor;
- (IBAction)setProgressIndicatorColor:(id)sender;

@end
