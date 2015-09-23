//
//  UITableViewCell_1X.h
//  ladder
//
//  Created by YueDonglin on 15/9/18.
//  Copyright © 2015年 YueDonglin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIBaseTableViewCell.h"

@interface UITableViewCell_1X : UIBaseTableViewCell

- (instancetype)initWithName:(NSString*)name Frame:(CGRect)rect;
- (void)addImage:(NSString*)name;

@property (nonatomic, strong) UIImageView *backImageView;

@end

