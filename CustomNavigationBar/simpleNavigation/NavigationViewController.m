//
//  NavigationViewController.m
//  simpleNavigation
//
//  Created by Chobits on 14-6-2.
//  Copyright (c) 2014年 Chobits. All rights reserved.
//

#import "NavigationViewController.h"

@interface NavigationViewController ()

@end

@implementation NavigationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if ([self.navigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)]) {
    
        [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"sectionbg"] forBarMetrics:UIBarMetricsDefault];
        }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

@implementation UINavigationBar (SetBackgroud)

- (void)drawRect:(CGRect)rect
{
    NSLog(@" %@ ",NSStringFromCGRect(rect));
    UIImage *image = [UIImage imageNamed:@"sectionbg"];
    [image drawInRect:rect];
}
@end