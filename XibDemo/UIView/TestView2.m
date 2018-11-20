//
//  TestView2.m
//  XibDemo
//
//  Created by zyj on 2018/11/20.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "TestView2.h"
#import "XXNibBridge.h"

#define random(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]

@interface TestView2()<XXNibBridge>
@property (weak, nonatomic) IBOutlet UIButton *view2Btn;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *viwe2BtnWidthConstraint;

@end

@implementation TestView2
{
    NSInteger changeLen;
}

//- (instancetype)initWithCoder:(NSCoder *)aDecoder
//{
////    return [super initWithCoder:aDecoder];
//    if (self = [super initWithCoder:aDecoder]) {
//        UIView *view = [[[NSBundle mainBundle] loadNibNamed:@"TestView2" owner:self options:nil] lastObject];
//        [self addSubview:view];
//    }
//    return self;
//}

- (IBAction)clickInView:(id)sender {
    NSLog(@"clickinview");
    
    int R = (arc4random() % 256) ;
    int G = (arc4random() % 256) ;
    int B = (arc4random() % 256) ;
    
    self.view2Btn.backgroundColor= random(R, G, B);
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        self->changeLen = 10;
    });
    
    if (self.viwe2BtnWidthConstraint.constant <= 40) {
        changeLen = 10;
    } else if (self.viwe2BtnWidthConstraint.constant >= 100) {
        changeLen = -10;
    }
    
    self.viwe2BtnWidthConstraint.constant += changeLen;
}

@end
