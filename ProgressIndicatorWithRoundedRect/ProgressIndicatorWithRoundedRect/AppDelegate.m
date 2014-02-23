//
//  AppDelegate.m
//  ProgressIndicatorWithRoundedRect
//
//  Created by shenyixin on 13-7-22.
//  Copyright (c) 2013年 http://www.helloitworks.com/. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.progressIndicator.doubleValue = 50.0;
}

- (IBAction)setProgressIndicatorColor:(id)sender {
    NSString *title = [sender titleOfSelectedItem];
    if ([title isEqualToString:@"Red"]) {
        [self.progressIndicator setBackGroundColor:[NSColor redColor]];
    }
    else if ([title isEqualToString:@"Blue"]) {
        [self.progressIndicator setBackGroundColor:[NSColor blueColor]];
    }
    if ([title isEqualToString:@"Green"]) {
        [self.progressIndicator setBackGroundColor:[NSColor greenColor]];
    }
}
@end
