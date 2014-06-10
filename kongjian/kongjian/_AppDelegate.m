//
//  _AppDelegate.m
//  kongjian
//
//  Created by Chobits on 14-5-27.
//  Copyright (c) 2014年 Chobits. All rights reserved.
//

#import "_AppDelegate.h"

@implementation _AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    //label 控件
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(90, 100, 140, 40)];
//    label.text = @"test label toll";
//    label.backgroundColor = [UIColor greenColor];
//    label.textAlignment = NSTextAlignmentCenter;
//    label.textColor = [UIColor whiteColor];
//    label.shadowColor = [UIColor grayColor];
//    label.shadowOffset = CGSizeMake(2, -2);
//    [self.window addSubview:label];
    
    //button 控件
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    [button setTitle:@"button" forState:UIControlStateNormal];
//    [button setTitle:@"add" forState:UIControlStateHighlighted];
//    [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    
    //设置背景图片
    [button setBackgroundImage:[UIImage imageNamed:@"button.png"] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:@"select.png"] forState:UIControlStateSelected];
    
    [button addTarget:self action:@selector(touchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(down) forControlEvents:UIControlEventTouchDown];
    [button addTarget:self action:@selector(outside) forControlEvents:UIControlEventTouchUpOutside];

    
    button.frame = CGRectMake( 90, 100, 140, 40);
    [self.window addSubview:button];

    [self.window makeKeyAndVisible];
    return YES;
}
- (void)touchUpInside:(UIButton *)button
{
    if (button.selected) {
        button.selected = NO;
    }else{
        button.selected = YES;
    }
    
}

- (void)down
{
    printf("down");
}

- (void)outside
{
    printf("outside");

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
