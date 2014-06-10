//
//  mainViewController.m
//  UITabBarController
//
//  Created by Chobits on 14-6-1.
//  Copyright (c) 2014年 Chobits. All rights reserved.
//

#import "mainViewController.h"
#import "HomeViewController.h"
#import "MessageViewController.h"
#import "SearchViewController.h"
#import "SettingViewController.h"
#import "otherViewController.h"

@interface mainViewController ()

- (void)loadCustomTarBarView;

@end

@implementation mainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    self.tabBar.hidden = YES;
        
    }
    return self;
}

- (void)loadCustomTarBarView
{
    //初始化tarbar背景
    _tarbarBG = [[UIImageView alloc] initWithFrame:CGRectMake(0, 431, 320, 49)];
    _tarbarBG.image = [UIImage imageNamed:@"tabbar"];
    [self.view addSubview:_tarbarBG];
    _tarbarBG.userInteractionEnabled = YES;
    
    //初始化自定义选中背景
    _selectView = [[UIImageView alloc] initWithFrame:CGRectMake(5, 49.0/2-20, 50, 40)];
    _selectView.image = [UIImage imageNamed:@"select"];
    [_tarbarBG addSubview:_selectView];
    
    //自定义TarBarItem -> UIButton
    float coordinatex=0;
    for (int index = 0; index < 5; index++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.tag = index;
        button.frame = CGRectMake(15+coordinatex, 49.0/2-15, 30, 30);
        NSString *imageName = [NSString stringWithFormat:@"%d",index+1];
        [button setBackgroundImage: [UIImage imageNamed:imageName]forState:UIControlStateNormal];
        [_tarbarBG addSubview:button];
        coordinatex += 65;
        [button addTarget:self action:@selector(changeViewControl:) forControlEvents:UIControlEventTouchUpInside];
    }
}




- (void)loadViewController
{

    HomeViewController *mainView = [[HomeViewController alloc] init];
    UINavigationController *mainNav = [[UINavigationController alloc] initWithRootViewController:mainView];
    UITabBarItem *homeBar = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@"home"] tag:1];
    mainView.tabBarItem = homeBar;
    
    MessageViewController *msgView = [[MessageViewController alloc] init];
    UINavigationController *setNav = [[UINavigationController alloc] initWithRootViewController:msgView];
    UITabBarItem *msgBar = [[UITabBarItem alloc] initWithTitle:@"信息" image:[UIImage imageNamed:@"see"] tag:2];
    msgView.tabBarItem = msgBar;
    
    SearchViewController *searchView = [[SearchViewController alloc] init];
    UINavigationController *searchNav = [[UINavigationController alloc] initWithRootViewController:searchView];
    UITabBarItem *searchBar = [[UITabBarItem alloc] initWithTitle:@"搜索" image:[UIImage imageNamed:@"search"] tag:3];
    searchView.tabBarItem = searchBar;
    
    SettingViewController *setView = [[SettingViewController alloc] init];
    UINavigationController *settingNav = [[UINavigationController alloc] initWithRootViewController:setView];
    UITabBarItem *settingBar = [[UITabBarItem alloc] initWithTitle:@"设置" image:[UIImage imageNamed:@"setting"] tag:4];
    setView.tabBarItem = settingBar;
    
    SettingViewController *otherView = [[SettingViewController alloc] init];
    UINavigationController *otherNav = [[UINavigationController alloc] initWithRootViewController:otherView];
    UITabBarItem *otherBar = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:5];    otherView.tabBarItem = otherBar;
    
    NSArray *viewController = @[mainNav,setNav,searchNav,settingNav,otherNav];
    [self setViewControllers:viewController animated:YES];

}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadViewController];
    [self loadCustomTarBarView];
}

- (void)showTarBar
{
//    _tarbarBG.hidden = NO;
    [UIView beginAnimations:nil context:NULL];
    _tarbarBG.frame = CGRectMake(0, 431, 320, 49);
    [UIView commitAnimations];
}

- (void)hiddenTarBar
{
//    _tarbarBG.hidden = YES;
    [UIView beginAnimations:nil context:NULL];
    _tarbarBG.frame = CGRectMake(-320, 431, 320, 49);
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)changeViewControl:(UIButton *)button
{
    self.selectedIndex = button.tag;
    [UIView beginAnimations:nil context:NULL];
    _selectView.frame = CGRectMake(5 +  button.tag*65, 49.0/2-20, 50, 40);
    [UIView commitAnimations];
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
