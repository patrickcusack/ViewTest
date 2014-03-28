//
//  PCAppDelegate.m
//  ViewTest
//
//  Created by Patrick Cusack on 3/27/14.
//  Copyright (c) 2014 Patrick Cusack. All rights reserved.
//

#import "PCAppDelegate.h"


@implementation PCAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    originalRect = [[self label] frame];
    [[self label] setWantsLayer:YES];
    isMoved = NO;
}

- (IBAction)update:(id)sender {
    [[[self label] layer] setNeedsDisplay];
}

- (IBAction)move:(id)sender {
    
    if (isMoved) {
        [[[self label] animator] setFrame:originalRect];
    } else {
        NSRect rect = [[self label] frame];
        rect.size.width *= 2.0;
        [[[self label] animator] setFrame:rect];
    }
    
    isMoved = !isMoved;
}

@end
