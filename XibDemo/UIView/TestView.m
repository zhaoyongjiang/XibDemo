//
//  TestView.m
//  XibDemo
//
//  Created by zyj on 2018/11/15.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "TestView.h"

#define random(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]

@interface TestView()
@property (weak, nonatomic) IBOutlet UIButton *btn;
@end

@implementation TestView

//- (instancetype)initWithCoder:(NSCoder *)aDecoder
//{
//    return [super initWithCoder:aDecoder];
//    if (self = [super initWithCoder:aDecoder]) {
//        UIView *view = [[[NSBundle mainBundle] loadNibNamed:@"TestView" owner:self options:nil] lastObject];
//        [self addSubview:view];
//    }
//    return self;
//}

- (IBAction)viewBtnClick:(UIButton *)sender {
    
    int R = (arc4random() % 256) ;
    int G = (arc4random() % 256) ;
    int B = (arc4random() % 256) ;
    
    self.btn.backgroundColor= random(R, G, B);
    
    NSLog(@"自我处理颜色,响应在view里：%@", sender.titleLabel.text);
}
@end
