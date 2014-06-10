//
//  _AppDelegate.m
//  colorView
//
//  Created by Chobits on 14-5-28.
//  Copyright (c) 2014年 Chobits. All rights reserved.
//

#import "_AppDelegate.h"

@implementation _AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    view1 = [[UIView alloc] init];
    view1.frame = CGRectMake(20, 40, 280, 420);
    view1.backgroundColor = [UIColor redColor];
    [self.window addSubview:view1];
    
    view2 = [[UIView alloc] init];
    view2.frame = CGRectMake(20, 20, 240, 380);
    view2.backgroundColor = [UIColor greenColor];
    [view1 addSubview:view2];
    
    view3 = [[UIView alloc] init];
    view3.frame = CGRectMake(20, 20, 200, 340);
    view3.backgroundColor = [UIColor yellowColor];
    [view2 addSubview:view3];
    
    view4 = [[UIView alloc] init];
    view4.frame = CGRectMake(20, 20, 160, 300);
    view4.backgroundColor = [UIColor purpleColor];
    [view3 addSubview:view4];
    
    view5 = [[UIView alloc] init];
    view5.frame = CGRectMake(20, 20, 120, 260);
    view5.backgroundColor = [UIColor blueColor];
    [view4 addSubview:view5];
    
    view6 = [[UIView alloc] init];
    view6.frame = CGRectMake(20, 20, 80, 220);
    view6.backgroundColor = [UIColor grayColor];
    [view5 addSubview:view6];
    
    view7 = [[UIView alloc] init];
    view7.frame = CGRectMake(20, 20, 40, 180);
    view7.backgroundColor = [UIColor orangeColor];
    [view6 addSubview:view7];
    
    NSTimer *time = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(startExchangeColor) userInfo:nil repeats:YES];
    
    
    return YES;
}

-(void)startExchangeColor
{
    UIView *temp = [[UIView alloc] init];
    temp.backgroundColor = view1.backgroundColor;
    view1.backgroundColor = view2.backgroundColor;
    view2.backgroundColor = view3.backgroundColor;
    view3.backgroundColor = view4.backgroundColor;
    view4.backgroundColor = view5.backgroundColor;
    view5.backgroundColor = view6.backgroundColor;
    view6.backgroundColor = view7.backgroundColor;
    view7.backgroundColor = temp.backgroundColor;

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
