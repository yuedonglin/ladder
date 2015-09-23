//
//  MBookInfo.m
//  ladder
//
//  Created by YueDonglin on 15/9/18.
//  Copyright © 2015年 YueDonglin. All rights reserved.
//

#import "MBookInfo.h"

@interface MBookInfo ()
@end

@implementation MBookInfo

- (id)initWithName:(NSUInteger)bookId{
    self = [super init];
    if(self){
        _bookId = bookId;
    }
    return self;
}

@end
