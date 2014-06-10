//
//  ThirdViewController.m
//  simpleNavigation
//
//  Created by Chobits on 14-5-29.
//  Copyright (c) 2014年 Chobits. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

static int vcTag = 3;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.viewControllerTag = vcTag;
        vcTag++;
        self.title = [NSString stringWithFormat:@"Title : %d",self.viewControllerTag];
    }
    return self;
}


- (void)loadView
{
    UIView *baseView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    baseView.backgroundColor = [UIColor yellowColor];
    self.view = baseView;
    
    UIButton *push = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [push setTitle:@"push" forState:UIControlStateNormal];
    [push setFrame:CGRectMake(90, 50, 140, 35)];
    [push addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:push];
    
    UIButton *pop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [pop setTitle:@"pop" forState:UIControlStateNormal];
    [pop setFrame:CGRectMake(90, 100, 140, 35)];
    [pop addTarget:self action:@selector(pop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pop];
    
    UIButton *root = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [root setTitle:@"root" forState:UIControlStateNormal];
    [root setFrame:CGRectMake(90, 150, 140, 35)];
    [root addTarget:self action:@selector(root) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:root];
    
    UIButton *index = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [index setTitle:@"index" forState:UIControlStateNormal];
    [index setFrame:CGRectMake(90, 200, 140, 35)];
    [index addTarget:self action:@selector(index) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:index];
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (void)push
{
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:thirdVC animated:YES];
}

- (void)pop
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)root
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)index
{
    UIViewController *secondVC = [[self.navigationController viewControllers] objectAtIndex:1];
    [self.navigationController popToViewController:secondVC animated:YES];
}

@end
