//
//  HomeViewController.h
//  ladder
//
//  Created by YueDonglin on 15/9/15.
//  Copyright © 2015年 YueDonglin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableViewScrollCell.h"
#import "UIBaseTableViewCellGroup.h"

@interface HomeViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>


- (void)initCellGroup;


@property (retain, nonatomic) UITableView               *tableView;
@property (retain, nonatomic) UIScrollView              *scrollView;
@property (retain, nonatomic) UIPageControl             *pageControl;
//@property (retain, nonatomic) UITableViewScrollCell   *cell;
@property (retain, nonatomic) UIBaseTableViewCellGroup* cellGroup;




@end

