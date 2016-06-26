//
//  AppDelegate.m
//  FLTabBar
//
//  Created by LBH on 2016/6/26.
//  Copyright © 2016年 Felix. All rights reserved.
//

#import "AppDelegate.h"
#import "FLTabBarController.h"
#import "FLObject.h"


#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] init];
    self.window.frame = [UIScreen mainScreen].bounds;
    self.window.backgroundColor = [UIColor whiteColor];
    
    FLObject *one = [[FLObject alloc]initWithViewController:[[OneViewController alloc]init] title:@"one" imageName:@"one" selectedImageName:@"one" isCustomImageView:NO];
    FLObject *two = [[FLObject alloc]initWithViewController:[[TwoViewController alloc]init] title:@"two" imageName:@"two" selectedImageName:@"two" isCustomImageView:NO];
    FLObject *three = [[FLObject alloc]initWithViewController:[[ThreeViewController alloc]init] title:@"three" imageName:@"three" selectedImageName:@"three" isCustomImageView:YES];
    FLObject *four = [[FLObject alloc]initWithViewController:[[FourViewController alloc]init] title:@"four" imageName:@"four" selectedImageName:@"four" isCustomImageView:NO];
    FLObject *five = [[FLObject alloc]initWithViewController:[[FiveViewController alloc]init] title:@"five" imageName:@"five" selectedImageName:@"five" isCustomImageView:NO];
    
    FLTabBarController *tabbarController = [[FLTabBarController alloc] initWithTabItems:@[one,two,three,four,five]];

    self.window.rootViewController = tabbarController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end