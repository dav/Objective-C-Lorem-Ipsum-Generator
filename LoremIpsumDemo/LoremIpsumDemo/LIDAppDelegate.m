//
//  LIDAppDelegate.m
//  LoremIpsumDemo
//
//  Created by dav on 5/1/13.
//  Copyright (c) 2013 SekaiNo. All rights reserved.
//

#import "LIDAppDelegate.h"

#import "LIDViewController.h"

@implementation LIDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
  self.viewController = [[LIDViewController alloc] initWithNibName:@"LIDViewController" bundle:nil];
  self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
