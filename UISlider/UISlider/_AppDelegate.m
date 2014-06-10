//
//  _AppDelegate.m
//  UISlider
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
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(110, 100, 100, 0)];
    [self.window addSubview:slider];
    slider.maximumValue = 10;
    slider.minimumValue = 0;
    slider.tag = 100;
    //slider.value = 2;
    
    //[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(test:) userInfo:slider repeats:NO];
    //[slider addTarget:self action:@selector(changed:) forControlEvents:UIControlEventValueChanged];
    //[slider addTarget:self action:@selector(touchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    [slider addTarget:self action:@selector(test1) forControlEvents:UIControlEventTouchDragInside];
    [slider addTarget:self action:@selector(test2) forControlEvents:UIControlEventTouchDragOutside];

    
    
    return YES;
}

- (void)test:(NSTimer *)timer
{
    UISlider *slider = [timer userInfo];
    [slider setValue:6 animated:YES];
    
}

- (void)changed:(UISlider *)slider
{
    NSLog(@"slider value : %.2f",slider.value);
}

- (void)touchUpInside:(UISlider *)slider
{
    NSLog(@"touchUpInside value : %.2f",slider.value);
}

- (void)test1
{
    NSLog(@"test1");
}

- (void)test2
{
    NSLog(@"test2");
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
