//
//  CALayer+UIColor.m
//  XibDemo
//
//  Created by zyj on 2018/11/6.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "CALayer+UIColor.h"

@implementation CALayer (UIColor)
- (void)setTranseColor2CGColor:(UIColor *)transeColor2CGColor
{
    self.borderColor = transeColor2CGColor.CGColor;
}

@end
