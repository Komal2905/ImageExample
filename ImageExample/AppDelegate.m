//
//  AppDelegate.m
//  ImageExample
//
//  Created by Vidya Ramamurthy on 19/12/15.
//  Copyright © 2015 BridgeLabz. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application


    NSImage *rypressLogo = [NSImage imageNamed:@"espresso"];
    self.logoImageView.image = rypressLogo;
    [self.logoImageView setEditable:YES];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)change:(id)sender {
    
    NSFileManager *fm = [NSFileManager defaultManager];
    NSArray *possibleURLs = [fm URLsForDirectory:NSDesktopDirectory
                                       inDomains:NSUserDomainMask];
    NSURL *desktopURL = nil;
    if ([possibleURLs count] > 0) {
        // Use the first match
        desktopURL = possibleURLs[0];
    }
    if (desktopURL != nil) {
        NSURL *localImageURL = [desktopURL URLByAppendingPathComponent:@"logo.png"];
        NSImage *localImage = [[NSImage alloc] initWithContentsOfURL:localImageURL];
        
    }
  }
@end
