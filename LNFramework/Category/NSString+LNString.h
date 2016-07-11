//
//  NSString+LNString.h
//  LNFramework
//
//  Created by David on 16/7/11.
//  Copyright © 2016年 lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (LNString)

// 根据地址 获得在沙盒中缓存目录的地址
- (NSString *)fileInCachesAddress;

// 根据地址 获得在沙盒中document的地址
- (NSString *)fileInDocumentAddress;

@end
