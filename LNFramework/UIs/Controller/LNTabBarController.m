//
//  LNTabBarController.m
//  LNFramework
//
//  Created by cong on 16/7/10.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "LNTabBarController.h"
#import "LNNavigationController.h"
#import "LNTabBar.h"

@interface LNTabBarController ()

@end

@implementation LNTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self addChildViewController];
    
    // 自定义tabBar
    LNTabBar *tabBar = [LNTabBar tabBarWithBtnBlock:^{
       
        // 设置自定义tabBar按钮的点击事件
        
    }];
    
    [self setValue:tabBar forKey:@"tabBar"];
}

// MARK : - 添加子控制器
- (void)addChildViewController{
    
    
    
}

// 根据传入controller title imageName
- (void)addChildViewController:(UIViewController *)childController andTitle:(NSString *)title andImageName:(NSString *)imageName{
    
    childController.title = title;
    
    childController.tabBarItem.image = [UIImage imageNamed:imageName];
    // 如果需要将图片设置为原样可以通过UIImage+LNImage的分类方法进行设置
    childController.tabBarItem.selectedImage = [UIImage imageNamed:[NSString stringWithFormat:@"%@__highlighted",imageName]];
    
    [self addChildViewController:[[LNNavigationController alloc]initWithRootViewController:childController]];
    
}

@end
