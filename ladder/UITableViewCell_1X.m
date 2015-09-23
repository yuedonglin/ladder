//
//  UITableViewCell_1X.m
//  ladder
//
//  Created by YueDonglin on 15/9/18.
//  Copyright © 2015年 YueDonglin. All rights reserved.
//

#import "UITableViewCell_1X.h"

@interface UITableViewCell_1X ()
@end

@implementation UITableViewCell_1X

- (instancetype)initWithName:(NSString*)name Frame:(CGRect)rect{
    UITableViewCell_1X *cell    = [ self initWithStyle:UITableViewCellStyleDefault reuseIdentifier:name];
    cell.frame  = rect;
    
    _backImageView = [[UIImageView alloc]initWithFrame:rect];
    [cell addSubview:_backImageView];
    return cell;
}

- (void)addImage:(NSString*)name{
    _backImageView.image    = [UIImage imageNamed:name];
}

@end
