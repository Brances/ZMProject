//
//  AppDelegate.m
//  ZMProject
//
//  Created by ZOMAKE on 2017/8/16.
//  Copyright © 2017年 zomake. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self customizeInterface];
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [UIViewController new];
    
    ZMMainViewController *vc = [[ZMMainViewController alloc] init];
    self.mainViewController = vc;
    self.window.rootViewController = vc;
    
    //button多个视图不可同时点击
    if ([[[UIDevice currentDevice] systemVersion] floatValue] > 8.0) {
        [[UIButton appearance] setExclusiveTouch:YES];
    }
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)customizeInterface {
    //设置Nav的背景色和title色
    UINavigationBar *navigationBarAppearance = [UINavigationBar appearance];
    [navigationBarAppearance setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithHexString:@"0xF8F8F8"]] forBarMetrics:UIBarMetricsDefault];
    [navigationBarAppearance setTintColor:[UIColor colorWithHexString:@"0x2EBE76"]];//返回按钮的箭头颜色
    NSDictionary *textAttributes = @{
                                     NSFontAttributeName: [UIFont systemFontOfSize:18],
                                     NSForegroundColorAttributeName: [UIColor colorWithHexString:@"0x323A45"],
                                     };
    [navigationBarAppearance setTitleTextAttributes:textAttributes];
    [[UISearchBar appearance] setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithHexString:@"0xF2F4F6"]] forBarPosition:0 barMetrics:UIBarMetricsDefault];
    
    
    
    //底部TabBar 样式
    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc] init]];
    [[UITabBar appearance] setBackgroundColor:[UIColor whiteColor]];
    [[UITabBar appearance] setShadowImage:[UIImage imageWithColor:[UIColor colorWithHexString:@"0xF2f2f2"]]];
    
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
