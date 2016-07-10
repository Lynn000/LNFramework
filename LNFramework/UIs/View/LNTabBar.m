//
//  LNTabBar.m
//  LNFramework
//
//  Created by cong on 16/7/10.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "LNTabBar.h"

// 按钮位置
NSInteger const btnIndex = 2;
// 按钮个数
NSInteger const btnCount = 5;

@interface LNTabBar ()

// 自定义按钮回调
@property (nonatomic,copy) BtnBlock btnBlock;

// 自定义按钮
@property (nonatomic,strong) UIButton * customButton;

@end

@implementation LNTabBar

#pragma mark - 布局
- (void)layoutSubviews{
    
    [super layoutSubviews];
    
    CGFloat barItemWidth = self.bounds.size.width / btnCount;
    CGFloat barItemHeight = self.bounds.size.height;
    NSInteger index = 0;
    
    for (UIView *subView in self.subviews) {
        
        if ([subView isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            
            subView.frame = CGRectMake(btnIndex * barItemWidth, 0, barItemWidth, barItemHeight);
            
            index++;
            
            if (index == btnIndex) {
                index++;
            }
        }
    }
    
    self.customButton.frame = CGRectMake(btnIndex * barItemWidth, 0, barItemWidth, barItemHeight);
    
}




#pragma mark - 构造方法
+ (instancetype)tabBarWithBtnBlock:(BtnBlock)btnBlock{
    
    LNTabBar *tabBar = [[LNTabBar alloc]init];
    
    tabBar.btnBlock = btnBlock;
    
    return tabBar;
}

#pragma mark - 懒加载
- (UIButton *)customButton{
    
    UIButton *customBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    // 设置按钮样式
    
    [self addSubview:customBtn];
    
    return customBtn;
}

@end
