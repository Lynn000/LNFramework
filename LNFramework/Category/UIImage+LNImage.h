//
//  UIImage+LNImage.h
//  LNFramework
//
//  Created by cong on 16/7/10.
//  Copyright © 2016年 lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LNImage)

// 获取原本图片方法（取消系统渲染效果）
+ (UIImage *)originalImageWithImageName:(NSString *)imageName;

// 获取屏幕截图
+ (UIImage *)getScreenShotImage;

// 重绘图片
- (UIImage *)repaintImage;

@end
