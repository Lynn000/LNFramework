//
//  UIImage+LNImage.m
//  LNFramework
//
//  Created by cong on 16/7/10.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "UIImage+LNImage.h"

@implementation UIImage (LNImage)

// MARK : - 获取原样图片
+ (UIImage *)originalImageWithImageName:(NSString *)imageName{
    
    return [[self imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

// MARK : - 获取屏幕截图
+ (UIImage *)getScreenShotImage{
    
    // 获取当前应用界面
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    
    // 开启绘画图形上下文
    UIGraphicsBeginImageContextWithOptions(window.bounds.size, NO, 1);
    
    // 获取当前图形上下文
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    // 将界面渲染到上下文中
    [window.layer renderInContext:contextRef];
    
    // 返回图片
    return UIGraphicsGetImageFromCurrentImageContext();
}

// MARK : - 重绘图片
- (UIImage *)repaintImage{
    
    // 手动开启图片图形上下文
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    
    // 将图片绘画上去
    [self drawAtPoint:CGPointZero];
    
    // 从图片图形上下文中获取图片
    UIImage *repaintImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // 关闭图片图形上下文
    UIGraphicsEndImageContext();
    
    return repaintImage;
    
}

@end
