//
//  MainViewController.m
//  ladder
//
//  Created by YueDonglin on 15/9/15.
//  Copyright © 2015年 YueDonglin. All rights reserved.
//

#import "MainViewController.h"

#import "HomeViewController.h"
#import "CaseViewController.h"
#import "SelfViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController


- (void)loadView{
    [super loadView];
    
    [self loadTab];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)loadTab{
    HomeViewController* homeViewController = [[HomeViewController alloc] init];
    CaseViewController* caseViewController = [[CaseViewController alloc] init];
    SelfViewController* selfViewController = [[SelfViewController alloc] init];

    self.viewControllers        = [NSArray arrayWithObjects:homeViewController, caseViewController, selfViewController, nil];
    
    UITabBar *tabBar            = self.tabBar;
    tabBar.backgroundColor      = [ UIColor whiteColor ];
    
    UITabBarItem *tabBarItem1   = [tabBar.items objectAtIndex:0];
    UITabBarItem *tabBarItem2   = [tabBar.items objectAtIndex:1];
    UITabBarItem *tabBarItem3   = [tabBar.items objectAtIndex:2];
    
    tabBarItem1.title = @"首页";
    tabBarItem2.title = @"频道";
    tabBarItem3.title = @"我的";
    
    tabBarItem1.image           =   [[UIImage imageNamed:@"home.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem1.selectedImage   =   [[UIImage imageNamed:@"home_select.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    tabBarItem2.image           =   [[UIImage imageNamed:@"case.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem2.selectedImage   =   [[UIImage imageNamed:@"case_select.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    tabBarItem3.image           =   [[UIImage imageNamed:@"self.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem3.selectedImage   =   [[UIImage imageNamed:@"self_select.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

}

@end
