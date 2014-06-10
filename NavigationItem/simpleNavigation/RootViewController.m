//
//  RootViewController.m
//  simpleNavigation
//
//  Created by Chobits on 14-5-29.
//  Copyright (c) 2014年 Chobits. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"root";
    }
    return self;
}

- (void)loadView
{
    UIView *baseView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    baseView.backgroundColor = [UIColor purpleColor];
    self.view = baseView;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Push" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(90, 100, 140, 35)];
    [button addTarget:self action:@selector(pushVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(study)];
    self.navigationItem.leftBarButtonItem = leftItem;
    
    UIButton *right = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [right setTitle:@"right" forState:UIControlStateNormal];
    [right setFrame:CGRectMake(90, 100, 50, 30)];
    [right addTarget:self action:@selector(item) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:right];
    self.navigationItem.rightBarButtonItem = rightItem;
    
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setToolbarHidden:YES animated:YES];
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

#pragma mark -Target Action

- (void)pushVC
{
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
    
}

- (void)study
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"study" message:@"学习" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alertView show];
    
    
}

- (void)item
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"警示" delegate:nil cancelButtonTitle:@"取消" destructiveButtonTitle:@"确认吗？" otherButtonTitles:@"再想想", nil];
    [actionSheet showInView:self.view];
}

@end
