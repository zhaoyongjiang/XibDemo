//
//  ViewController.m
//  XibDemo
//
//  Created by zyj on 2018/11/15.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TestView *view = [[[NSBundle mainBundle] loadNibNamed:@"TestView" owner:self options:nil] lastObject];
//
    [self.view addSubview:view];
//
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
    
}

- (IBAction)btnClick:(UIButton *)sender {
    NSLog(@"点击了,响应在vc里：%@", sender.titleLabel.text);
}

@end
