//
//  AppDelegate.m
//  share
//
//  Created by 萨缪 on 2018/7/27.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "AppDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
//
//    [self.window makeKeyAndVisible];
//
//    VCFirst * vcFirst = [[VCFirst alloc] init];
//    vcFirst.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"第一" image:nil tag:101];
//
//    VCSecond * vcSecond = [[VCSecond alloc] init];
//    vcSecond.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"第二" image:nil tag:102];
//
//    UITabBarController * tabController = [[UITabBarController alloc] init];
//
//    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:vcFirst];
//
//    UINavigationController * nav1 = [[UINavigationController alloc] initWithRootViewController:vcSecond];
//
//    NSArray * arrayVC = [NSArray arrayWithObjects:nav,nav1, nil];
//
//    tabController.viewControllers = arrayVC;
//
//    ViewController * VC = [[ViewController alloc] init];
//
//
//
//    self.window.rootViewController = VC;

    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
