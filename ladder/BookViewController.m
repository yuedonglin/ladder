//
//  BookViewController.m
//  ladder
//
//  Created by YueDonglin on 15/9/15.
//  Copyright © 2015年 YueDonglin. All rights reserved.
//

#import "BookViewController.h"

@interface BookViewController ()

@end

@implementation BookViewController

- (void)loadView{
    [super loadView];
    
    UIView *view=[[UIView alloc]initWithFrame:self.view.bounds];
    view.alpha=0.5;
    view.backgroundColor=[UIColor redColor];
    self.view=view;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

