//
//  CustomImageView.m
//  XibDemo
//
//  Created by zyj on 2018/11/19.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "CustomImageView.h"

@implementation CustomImageView

- (void)setRadius:(CGFloat)radius
{
    _radius = radius;
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = radius > 0 ? true : false;
}

//- (CGFloat)radius
//{
//    return self.layer.cornerRadius;
//}

- (void)setDefaultImage:(UIImage *)defaultImage
{
    _defaultImage = defaultImage;
    self.image = defaultImage;
}

- (void)setColor:(UIColor *)color
{
    _color = color;
    self.backgroundColor = color;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
    
}

- (CGFloat)borderWidth {
    return self.layer.borderWidth;
}

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

- (UIColor *)borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setMasksBounds:(BOOL)masksBounds
{
    _masksBounds = masksBounds;
    self.layer.masksToBounds = masksBounds;
}

@end
