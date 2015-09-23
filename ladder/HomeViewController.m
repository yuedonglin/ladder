//
//  HomeViewController.m
//  ladder
//
//  Created by YueDonglin on 15/9/15.
//  Copyright © 2015年 YueDonglin. All rights reserved.
//

#import "HomeViewController.h"
#import "UITableViewCell_1X.h"

@interface HomeViewController ()
@end

@implementation HomeViewController

- (void)loadView{
    [super loadView];
    self.view.backgroundColor   = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initCellGroup];
    
    _tableView                  = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.backgroundColor  = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.2];
    _tableView.dataSource       = self;
    _tableView.delegate         = self;
    
    
    [self.view addSubview:_tableView];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger index = indexPath.row;
    return [ _cellGroup height:index ];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _cellGroup.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger index = indexPath.row;
    return [ _cellGroup cell:index ];
}

-(NSInteger)height{
    return self.view.frame.size.width * 720/1280;
}

-(NSInteger)width{
    return self.view.frame.size.width;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)initCellGroup{
    _cellGroup  = [ [ UIBaseTableViewCellGroup alloc ]init ];
    
    UITableViewScrollCell* scrollCell1   = [[UITableViewScrollCell alloc] initWithName:@"scrollCell1" Frame:CGRectMake(0, 0, [self width], [self height]) ];
//    [scrollCell1 addImage:@"page1.jpg"];
//    [scrollCell1 addImage:@"page2.jpg"];
//    [scrollCell1 addImage:@"page3.jpg"];
//    [scrollCell1 addImage:@"page4.jpg"];
    
    
    UITableViewCell_1X* cell_1X1 = [[UITableViewCell_1X alloc]initWithName:@"cell_1X1" Frame:CGRectMake(0, 0, [self width], 100) ];
    [cell_1X1 addImage:@"page3.jpg"];
    
    UITableViewCell_1X* cell_1X2 = [[UITableViewCell_1X alloc]initWithName:@"cell_1X2" Frame:CGRectMake(0, 0, [self width], 100) ];
    [cell_1X2 addImage:@"page2.jpg"];
    
    UITableViewCell_1X* cell_1X3 = [[UITableViewCell_1X alloc]initWithName:@"cell_1X3" Frame:CGRectMake(0, 0, [self width], 100) ];
    [cell_1X3 addImage:@"page1.jpg"];
    
    UITableViewCell_1X* cell_1X4 = [[UITableViewCell_1X alloc]initWithName:@"cell_1X4" Frame:CGRectMake(0, 0, [self width], 100) ];
    [cell_1X4 addImage:@"page4.jpg"];
    
    [ _cellGroup addCell:scrollCell1];
    [ _cellGroup addCell:cell_1X1];
    [ _cellGroup addCell:cell_1X2];
    [ _cellGroup addCell:cell_1X3];
    [ _cellGroup addCell:cell_1X4];
}


@end
