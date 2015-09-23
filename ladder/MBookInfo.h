//
//  MBookInfo.h
//  ladder
//
//  Created by YueDonglin on 15/9/18.
//  Copyright © 2015年 YueDonglin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MInfo.h"

@interface MBookInfo : MInfo

- (id)initWithName:(NSUInteger)bookId;

@property (retain, nonatomic) NSString *bookInfo;
@property (nonatomic, assign) NSUInteger bookId;
@property (nonatomic, assign) NSInteger bookMinAge;
@property (nonatomic, assign) NSInteger bookMaxAge;
@property (nonatomic, assign) NSInteger bookCount;

@end

