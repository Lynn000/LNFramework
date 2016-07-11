//
//  LNHTTPClient.m
//  LNFramework
//
//  Created by cong on 16/7/10.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "LNHTTPClient.h"
#import "AFHTTPSessionManager.h"


@implementation LNHTTPClient
static AFHTTPSessionManager *_manager = nil;


#pragma mark - 网络请求

// MARK : - 有process block 方法
+ (void)requestWithType:(LNHTTPClientType)type andURLString:(NSString *)URLStr andParameters:(id)paramters andProgressBlock:(ProgressBlock)progress andSuccessBlock:(SuccessBlock)success andFailureBlock:(FailureBlock)failure{
    
    void(^NewSuccess)(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) = ^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject){
        
        success(responseObject);
    };
    
    void(^NewFailure)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) = ^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error){
        
        failure(error);
    };
    
    if (type == LNHTTPClientTypeGET) {
        
        [_manager GET:URLStr parameters:paramters progress:progress success:NewSuccess failure:NewFailure];
        
    }else if (type == LNHTTPClientTypePOST){
        
        [_manager POST:URLStr parameters:paramters progress:progress success:NewSuccess failure:NewFailure];
        
    }
    
}

// MARK : - 无process block 方法
+ (void)requestWithType:(LNHTTPClientType)type andURLString:(NSString *)URLStr andParameters:(id)paramters andSuccessBlock:(SuccessBlock)success andFailureBlock:(FailureBlock)failure{

    [self requestWithType:type andURLString:URLStr andParameters:paramters andProgressBlock:nil andSuccessBlock:success andFailureBlock:failure];
}



#pragma mark - 初始化
+ (void)initialize{
    
    _manager = [AFHTTPSessionManager manager];
    
}


@end
