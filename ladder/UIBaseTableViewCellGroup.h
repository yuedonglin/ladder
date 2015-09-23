//
//  UIBaseTableViewCellGroup.h
//  ladder
//
//  Created by YueDonglin on 15/9/18.
//  Copyright © 2015年 YueDonglin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableViewScrollCell.h"

@interface UIBaseTableViewCellGroup : NSObject

- (id)init;
- (void)addCell:(UIBaseTableViewCell*)cell;
- (UIBaseTableViewCell*)cell:(NSInteger)index;
- (NSInteger)count;
- (NSInteger)height:(NSInteger)index;

@property (retain, nonatomic) NSMutableArray* cells;

@end
