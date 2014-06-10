//
//  _AppDelegate.m
//  ImageView
//
//  Created by Chobits on 14-5-28.
//  Copyright (c) 2014年 Chobits. All rights reserved.
//

#import "_AppDelegate.h"

@implementation _AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(320/2-40/2, 100, 40, 30)];
    imageView.image = [UIImage imageNamed:@"smile.png"];
    imageView.highlightedImage = [UIImage imageNamed:@"nsmile.png"];
    imageView.userInteractionEnabled = YES;
    imageView.highlighted = YES;
    [self.window addSubview:imageView];
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(110, 200, 100, 100)];
    imageView1.backgroundColor = [UIColor redColor];
    imageView1.userInteractionEnabled = YES;
    [self.window addSubview:imageView1];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(10, 20, 80, 30);
    [button1 setTitle:@"AlertView" forState:UIControlStateNormal];
     [imageView1 addSubview:button1];
    
    
    
    
    return YES;
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
