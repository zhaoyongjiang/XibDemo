//
//  CustomImageView.h
//  XibDemo
//
//  Created by zyj on 2018/11/19.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

//继承自view，xib使用时候改为imageview

IB_DESIGNABLE

@interface CustomImageView : UIImageView
//属性用IBInspectable修饰后，就能在xib中看到这个属性了，当然也可以用xib进行赋值了
@property (nonatomic, assign) IBInspectable NSInteger num;

@property (nonatomic, assign) IBInspectable CGFloat fNum;
@property (nonatomic, assign) IBInspectable CGFloat radius;

@property (nullable, nonatomic, copy) IBInspectable NSString *str;

//Boolean 类型不行
@property (nonatomic, assign) IBInspectable BOOL flag;
@property (nonatomic, assign) IBInspectable BOOL masksBounds;
//@property (nonatomic, assign) IBInspectable Boolean test;

@property (nonatomic, assign) IBInspectable CGRect *rect;

@property (nonatomic, assign) IBInspectable CGSize *size;

@property (nonatomic, assign) IBInspectable CGPoint point;

@property (nonatomic, strong) IBInspectable UIImage *defaultImage;

@property (nonatomic, strong) IBInspectable UIColor *color;

@property (nonatomic, assign) IBInspectable NSRange range;
@end
