//
//  LNDBManager.m
//  LNFramework
//
//  Created by cong on 16/7/10.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "LNDBManager.h"
#import "FMDB.h"
#import "NSString+LNString.h"


NSString * const dbFileName = @"Database.db";


@implementation LNDBManager

static FMDatabaseQueue *_queue = nil;

#pragma mark - 数据库相关方法



#pragma mark - 初始化方法

+ (void)initialize{
    
    NSString *filePath = [dbFileName fileInDocumentAddress];
    
    _queue = [FMDatabaseQueue databaseQueueWithPath:filePath];
    
    NSString *sql = @"create table if not exists T_Weibo_Status ( status_id integer not null primary key ,status text , user_id integer );";
    
    [_queue inDatabase:^(FMDatabase *db) {
        
        [db executeStatements:sql];
    }];
    
}



@end
