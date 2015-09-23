//
//  UITableViewScrollCell.m
//  ladder
//
//  Created by YueDonglin on 15/9/17.
//  Copyright © 2015年 YueDonglin. All rights reserved.
//

#import "UITableViewScrollCell.h"
#import "Http.h"
@interface UITableViewScrollCell ()
@end

@implementation UITableViewScrollCell

- (instancetype)initWithName:(NSString*)name Frame:(CGRect)rect{
    UITableViewScrollCell *cell    = [ self initWithStyle:UITableViewCellStyleDefault reuseIdentifier:name];
    cell.frame  = rect;
    _scrollView = [[UIScrollView alloc] initWithFrame:rect];
    _scrollView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
    _scrollView.clipsToBounds = YES;
    _scrollView.scrollEnabled = YES;
    _scrollView.pagingEnabled = YES;
    _scrollView.directionalLockEnabled = NO;
    _scrollView.alwaysBounceHorizontal = NO;
    _scrollView.alwaysBounceVertical = NO;
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.showsVerticalScrollIndicator = NO;
    [_scrollView setPagingEnabled:YES];
    
    [cell addSubview:_scrollView ];
    
    
    [[Http instance]testt:self];
    [[Http instance]testt:self];
    [[Http instance]testt:self];
    [[Http instance]testt:self];
    return cell;
}

- (void)test:(UIImage*)image{
    [self addImagetest:image];
    //[[Http instance]testt:self];
}

-(void)addImagetest:(UIImage*)image{
    NSUInteger count = _scrollView.subviews.count;
    int width = _scrollView.frame.size.width;
    int height = _scrollView.frame.size.height;
    
    UIImageView *imageview = [[UIImageView alloc]initWithFrame:CGRectMake(width*count, 0, width, height )];
    [imageview setImage:image];
    
    [ _scrollView addSubview:imageview];
    _scrollView.contentSize = CGSizeMake(width*(count+1), height);
}


-(void)addImage:(NSString*)name{
    NSUInteger count = _scrollView.subviews.count;
    int width = _scrollView.frame.size.width;
    int height = _scrollView.frame.size.height;
    
    UIImageView *imageview = [[UIImageView alloc]initWithFrame:CGRectMake(width*count, 0, width, height )];
    [imageview setImage:[UIImage imageNamed:name]];
    
    [ _scrollView addSubview:imageview];
    _scrollView.contentSize = CGSizeMake(width*(count+1), height);
}

@end







//UITableViewScrollCell *cell    = [ self initWithStyle:UITableViewCellStyleDefault reuseIdentifier:name];
//cell.frame  = rect;
//_scrollView = [[UIScrollView alloc] initWithFrame:rect];
////设置滚动条类型
//_scrollView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
////是否自动裁切超出部分
//_scrollView.clipsToBounds = YES;
////设置是否可以缩放
//_scrollView.scrollEnabled = YES;
////设置是否可以进行画面切换
//_scrollView.pagingEnabled = YES;
////设置在拖拽的时候是否锁定其在水平或者垂直的方向
//_scrollView.directionalLockEnabled = NO;
////隐藏滚动条设置（水平、跟垂直方向）
//_scrollView.alwaysBounceHorizontal = NO;
//_scrollView.alwaysBounceVertical = NO;
//_scrollView.showsHorizontalScrollIndicator = NO;
//_scrollView.showsVerticalScrollIndicator = NO;
//[_scrollView setPagingEnabled:YES];
//
//[cell addSubview:_scrollView ];
//
//return cell;