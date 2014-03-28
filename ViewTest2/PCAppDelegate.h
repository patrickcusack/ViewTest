//
//  PCAppDelegate.h
//  ViewTest
//
//  Created by Patrick Cusack on 3/27/14.
//  Copyright (c) 2014 Patrick Cusack. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PCAppDelegate : NSObject <NSApplicationDelegate>{
    NSRect originalRect;
    BOOL isMoved;
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *label;

- (IBAction)update:(id)sender;
- (IBAction)move:(id)sender;

@end
