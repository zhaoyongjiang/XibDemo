//
//  ZYJLabel.m
//  XibDemo
//
//  Created by zyj on 2018/11/6.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "ZYJLabel.h"

@implementation ZYJLabel

- (instancetype)init {
    if (self = [super init]) {
        _textInsets = UIEdgeInsetsZero;
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        _textInsets = UIEdgeInsetsZero;
    }
    return self;
}
- (void)drawTextInRect:(CGRect)rect {
    [self sizeToFit];
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, _textInsets)];
}

@end
