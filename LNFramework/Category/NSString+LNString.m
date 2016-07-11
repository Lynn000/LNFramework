//
//  NSString+LNString.m
//  LNFramework
//
//  Created by David on 16/7/11.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "NSString+LNString.h"

@implementation NSString (LNString)

// MARK : - 获得在缓存中的地址
- (NSString *)fileInCachesAddress{
    
    NSString *cachesPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject;
    
    return [cachesPath stringByAppendingPathComponent:self.lastPathComponent];
    
}

// MARK : - 获得在document中的目录
- (NSString *)fileInDocumentAddress{
    
    NSString *documentPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    
    return [documentPath stringByAppendingPathComponent:self.lastPathComponent];
}

@end
