//
//  LNHTTPClient.h
//  LNFramework
//
//  Created by cong on 16/7/10.
//  Copyright © 2016年 lin. All rights reserved.
//

#import <Foundation/Foundation.h>

// 网络请求类型
typedef enum {
    
    LNHTTPClientTypeGET = 0,
    LNHTTPClientTypePOST = 1
    
}LNHTTPClientType;

// 成功回调block
typedef void(^SuccessBlock)(id response);
// 失败回调block
typedef void(^FailureBlock)(NSError *error);
// 过程block
typedef void(^ProgressBlock)(NSProgress *progress);

@interface LNHTTPClient : NSObject

// 网络请求 根据传入的请求类型 发送网络请求 无过程block
+ (void)requestWithType:(LNHTTPClientType)type andURLString:(NSString *)URLStr andParameters:(id)paramters andSuccessBlock:(SuccessBlock)success andFailureBlock:(FailureBlock)failure;

// 网络请求 根据传入的请求类型 发送网络请求 有过程block
+ (void)requestWithType:(LNHTTPClientType)type andURLString:(NSString *)URLStr andParameters:(id)paramters andProgressBlock:(ProgressBlock)progress andSuccessBlock:(SuccessBlock)success andFailureBlock:(FailureBlock)failure;

@end
