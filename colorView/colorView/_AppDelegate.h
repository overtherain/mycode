//
//  _AppDelegate.h
//  colorView
//
//  Created by Chobits on 14-5-28.
//  Copyright (c) 2014年 Chobits. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface _AppDelegate : UIResponder <UIApplicationDelegate>
{
    UIView *view1;
    UIView *view2;
    UIView *view3;
    UIView *view4;
    UIView *view5;
    UIView *view6;
    UIView *view7;
}
@property (strong, nonatomic) UIWindow *window;

-(void)startExchangeColor;

@end
