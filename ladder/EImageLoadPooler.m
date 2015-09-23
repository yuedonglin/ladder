//
//  EImageLoadPooler.m
//  ladder
//
//  Created by YueDonglin on 15/9/18.
//  Copyright © 2015年 YueDonglin. All rights reserved.
//

#import "EImageLoadPooler.h"

@interface EImageLoadPooler ()
@end

@implementation EImageLoadPooler

+(instancetype)instance{
    static EImageLoadPooler* imageLoadPooler=nil;
    
    if( imageLoadPooler == nil ){
        imageLoadPooler  = [[EImageLoadPooler alloc]init];
    }
    return imageLoadPooler;
}


@end
