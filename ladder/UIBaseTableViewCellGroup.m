//
//  UIBaseTableViewCellGroup.m
//  ladder
//
//  Created by YueDonglin on 15/9/18.
//  Copyright © 2015年 YueDonglin. All rights reserved.
//

#import "UIBaseTableViewCellGroup.h"

@interface UIBaseTableViewCellGroup ()
@end

@implementation UIBaseTableViewCellGroup

- (id)init{
    self = [super init];
    if(self){
        _cells    = [ [NSMutableArray alloc]init];
    }
    return self;
}

- (void)addCell:(UIBaseTableViewCell*)cell{
    [ _cells addObject:cell ];
}

- (UIBaseTableViewCell*)cell:(NSInteger)index{
    if( index < _cells.count ){
        return [ _cells objectAtIndex:index];
    }
    return nil;
}

- (NSInteger)count{
    return _cells.count;
}

- (NSInteger)height:(NSInteger)index{
    if( index < _cells.count ){
        UIBaseTableViewCell* cell =[ _cells objectAtIndex:index];
        NSInteger i = cell.frame.size.height;
        return i;
    }
    return 0;
}


@end
