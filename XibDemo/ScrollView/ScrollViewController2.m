//
//  ScrollViewController2.m
//  XibDemo
//
//  Created by zyj on 2018/11/10.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "ScrollViewController2.h"

@interface ScrollViewController2 ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contanerViewHeightConstraint;

@property (weak, nonatomic) IBOutlet UIView *bottomView;

@end

@implementation ScrollViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //底部40，滑动留白
    self.contanerViewHeightConstraint.constant = self.bottomView.frame.origin.y + self.bottomView.frame.size.height + 40;
}

@end
