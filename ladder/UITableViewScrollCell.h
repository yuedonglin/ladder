//
//  UITableViewScrollCell.h
//  ladder
//
//  Created by YueDonglin on 15/9/17.
//  Copyright © 2015年 YueDonglin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableViewScrollCellModel.h"
#import "UIBaseTableViewCell.h"
#import "Http.h"

@interface UITableViewScrollCell : UIBaseTableViewCell<HttpDelegate>

- (instancetype)initWithName:(NSString*)name Frame:(CGRect)rect;
- (void)addImage:(NSString*)name;
- (void)test:(UIImage*)image;

@property (retain, nonatomic) UIScrollView      *scrollView;

@end

