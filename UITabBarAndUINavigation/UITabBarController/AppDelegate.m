//
//  AppDelegate.m
//  UITabBarController
//
//  Created by Chobits on 14-6-2.
//  Copyright (c) 2014年 Chobits. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "MessageViewController.h"
#import "SearchViewController.h"
#import "SettingViewController.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    HomeViewController *mainView = [[HomeViewController alloc] init];
    UINavigationController *mainNav = [[UINavigationController alloc] initWithRootViewController:mainView];
    UITabBarItem *homeBar = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@"home"] tag:1];
    mainView.tabBarItem = homeBar;
    
    MessageViewController *msgView = [[MessageViewController alloc] init];
    UINavigationController *setNav = [[UINavigationController alloc] initWithRootViewController:msgView];
    UITabBarItem *msgBar = [[UITabBarItem alloc] initWithTitle:@"信息" image:[UIImage imageNamed:@"see"] tag:2];
    msgView.tabBarItem = msgBar;
    
    SearchViewController *searchView = [[SearchViewController alloc] init];
    UINavigationController *searchNav = [[UINavigationController alloc] initWithRootViewController:searchView];
    UITabBarItem *searchBar = [[UITabBarItem alloc] initWithTitle:@"搜索" image:[UIImage imageNamed:@"search"] tag:3];
    searchView.tabBarItem = searchBar;
    
    SettingViewController *setView = [[SettingViewController alloc] init];
    UINavigationController *settingNav = [[UINavigationController alloc] initWithRootViewController:setView];
    UITabBarItem *settingBar = [[UITabBarItem alloc] initWithTitle:@"设置" image:[UIImage imageNamed:@"setting"] tag:4];
    setView.tabBarItem = settingBar;
    
    NSArray *viewController = @[mainNav,settingNav,searchNav,setNav];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.delegate = self;//设置代理
    tabBarController.viewControllers = viewController;
    self.window.rootViewController = tabBarController;
    
    
    
    
    
    
    return YES;
}

#pragma mark -TarBarController Delegate

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    //NSLog(@"shouldSelectViewController");
    return YES;
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    //NSLog(@"didSelectViewController");

}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
