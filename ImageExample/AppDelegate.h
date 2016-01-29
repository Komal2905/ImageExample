//
//  AppDelegate.h
//  ImageExample
//
//  Created by Vidya Ramamurthy on 19/12/15.
//  Copyright © 2015 BridgeLabz. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSImageView *logoImageView;
@property (assign) IBOutlet NSTextView *termsTextView;
- (IBAction)change:(id)sender;

@end

