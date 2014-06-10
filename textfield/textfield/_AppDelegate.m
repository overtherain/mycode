//
//  _AppDelegate.m
//  textfield
//
//  Created by Chobits on 14-5-28.
//  Copyright (c) 2014年 Chobits. All rights reserved.
//

#import "_AppDelegate.h"

@implementation _AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor grayColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(90, 80, 140, 40);
    [button addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:button];
    
    
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(60, 180, 200, 40)];
    tf.tag = 101;
    tf.borderStyle = UITextBorderStyleRoundedRect;
    tf.placeholder = @"请输入内容：";
//    tf.clearsOnBeginEditing = YES;
//    tf.clearButtonMode = UITextFieldViewModeWhileEditing;
    [self.window addSubview:tf];
//  [tf release];
    
    //自定义清除按钮
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
    view.backgroundColor = [UIColor redColor];
    tf.rightView = view;
    tf.rightViewMode = UITextFieldViewModeWhileEditing;
    
//    //自定义键盘
//    UIView *jpview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 200)];
//    jpview.backgroundColor = [UIColor yellowColor];
//    tf.inputView = jpview;
    
    //自定义共用键盘
    UIView *gview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 30)];
    gview.backgroundColor = [UIColor yellowColor];
    tf.inputAccessoryView = gview;
    tf.secureTextEntry = YES;
    //tf.keyboardType = UIKeyboardTypeEmailAddress;
    tf.returnKeyType = UIReturnKeyNext;
    tf.delegate = self;//设置代理
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)test
{
    UITextField *tf = (UITextField *)[self.window viewWithTag:101];
    //移除键盘
    [tf resignFirstResponder];
}


//- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;        // return NO to disallow editing.
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"textFieldDidBeginEditing");
}// became first responder
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    
}
// return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"textFieldDidEndEditing ：%@"，textField.text);

}// may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    
}// return NO to not change text

//- (BOOL)textFieldShouldClear:(UITextField *)textField;               // called when clear button pressed. return NO to ignore (no notifications)
//- (BOOL)textFieldShouldReturn:(UITextField *)textField;


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
