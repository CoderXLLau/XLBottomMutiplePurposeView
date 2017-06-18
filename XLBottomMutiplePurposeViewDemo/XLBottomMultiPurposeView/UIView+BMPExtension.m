//
//  UIView+BMPExtension.m
//  XLBottomMutiplePurposeViewDemo
//
//  Created by XL on 2017/6/17.
//  Copyright © 2017年 LiuShannoon. All rights reserved.
//

#import "UIView+BMPExtension.h"
#import <objc/runtime.h>

@implementation UIView (BMPExtension)

#pragma mark    -   计算frame

- (CGSize)xl_size
{
    return self.frame.size;
}

- (void)setXl_size:(CGSize)xl_size
{
    CGRect frame = self.frame;
    frame.size = xl_size;
    self.frame = frame;
}

- (CGFloat)xl_width
{
    return self.frame.size.width;
}

- (void)setXl_width:(CGFloat)xl_width
{
    CGRect rect = self.frame;
    rect.size.width = xl_width;
    self.frame = rect;
}

- (CGFloat)xl_height
{
    return self.frame.size.height;
}

- (void)setXl_height:(CGFloat)xl_height
{
    CGRect rect = self.frame;
    rect.size.height = xl_height;
    self.frame = rect;
}

- (CGFloat)xl_x
{
    return self.frame.origin.x;
}

- (void)setXl_x:(CGFloat)xl_x
{
    CGRect rect = self.frame;
    rect.origin.x = xl_x;
    self.frame = rect;
}

- (CGFloat)xl_y
{
    return self.frame.origin.y;
}

- (void)setXl_y:(CGFloat)xl_y
{
    CGRect rect = self.frame;
    rect.origin.y = xl_y;
    self.frame = rect;
}

- (CGFloat)xl_centerX
{
    return self.center.x;
}

- (void)setXl_centerX:(CGFloat)xl_centerX
{
    CGPoint point = self.center;
    point.x = xl_centerX;
    self.center = point;
}

- (CGFloat)xl_centerY
{
    return self.center.y;
}

- (void)setXl_centerY:(CGFloat)xl_centerY
{
    CGPoint point = self.center;
    point.y = xl_centerY;
    self.center = point;
}
//
//- (CGFloat)height
//{
//    return self.frame.size.height;
//}
//
//- (void)setHeight:(CGFloat)height
//{
//    CGRect rect = self.frame;
//    rect.size.height = height;
//    self.frame = rect;
//}
//
//- (CGFloat)width
//{
//    return self.frame.size.width;
//}
//
//- (void)setWidth:(CGFloat)width
//{
//    CGRect rect = self.frame;
//    rect.size.width = width;
//    self.frame = rect;
//}
//
//- (CGFloat)x
//{
//    return self.frame.origin.x;
//}
//
//- (void)setX:(CGFloat)x
//{
//    CGRect rect = self.frame;
//    rect.origin.x = x;
//    self.frame = rect;
//}
//
//- (CGFloat)y
//{
//    return self.frame.origin.y;
//}
//
//- (void)setY:(CGFloat)y
//{
//    CGRect rect = self.frame;
//    rect.origin.y = y;
//    self.frame = rect;
//}
//
//- (CGFloat)centerX
//{
//    return self.center.x;
//}
//
//- (CGFloat)centerY
//{
//    return self.center.y;
//}
//
//- (void)setCenterX:(CGFloat)centerX
//{
//    CGPoint point = self.center;
//    point.x = centerX;
//    self.center = point;
//}
//
//- (void)setCenterY:(CGFloat)centerY
//{
//    CGPoint point = self.center;
//    point.y = centerY;
//    self.center = point;
//}

/**
 *  判断是否在窗口上面
 */
- (BOOL)xl_isShowingOnKeyWindow
{
    // 主窗口
    UIWindow *keyWindow = XLKeyWindow;
    
    // 以主窗口左上角为坐标原点, 计算self的矩形框
    CGRect newFrame = [keyWindow convertRect:self.frame fromView:self.superview];
    CGRect winBounds = keyWindow.bounds;
    
    // 主窗口的bounds 和 self的矩形框 是否有重叠
    BOOL intersects = CGRectIntersectsRect(newFrame, winBounds);
    
    return !self.isHidden && self.alpha > 0.01 && self.window == keyWindow && intersects;
}

#define XLBMPBundle [NSBundle bundleForClass:[self class]]
+ (instancetype)xl_viewFromXib
{
    return [[[NSBundle bundleForClass:[self class]] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

@end
