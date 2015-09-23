//
//  Http.h
//  ladder
//
//  Created by YueDonglin on 15/9/18.
//  Copyright © 2015年 YueDonglin. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol HttpDelegate
- (void)test:(UIImage*)image;
@end

@interface Http : NSObject<NSURLSessionDownloadDelegate>

+(instancetype)instance;

//-(void)httpRequest;

-(void)testt:(id<HttpDelegate>)delegate;

@property (atomic, strong) NSURLSessionDownloadTask *task;
@property (atomic, strong) NSData *partialData;

@property (atomic, strong) id<HttpDelegate> delegate;

@end

