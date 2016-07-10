//
//  LNTabBar.h
//  LNFramework
//
//  Created by cong on 16/7/10.
//  Copyright © 2016年 lin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^BtnBlock)();

@interface LNTabBar : UITabBar

// 快速构造
+ (instancetype)tabBarWithBtnBlock:(BtnBlock) btnBlock;

@end
