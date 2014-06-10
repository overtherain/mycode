//
//  mainViewController.h
//  UITabBarController
//
//  Created by Chobits on 14-6-1.
//  Copyright (c) 2014年 Chobits. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mainViewController : UITabBarController
{
@private
    UIImageView *_selectView;
    UIImageView *_tarbarBG;
}

- (void)loadViewController;

- (void)showTarBar;

- (void)hiddenTarBar;

@end
