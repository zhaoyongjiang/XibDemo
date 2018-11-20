//
//  ViewController.m
//  XibDemo
//
//  Created by zyj on 2018/11/15.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"
#import "TestView2.h"

#define random(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]

@interface ViewController ()

//使用了XXNibBridge，没法这样使用
@property (strong, nonatomic) IBOutlet TestView2 *view2;
@property (strong, nonatomic) IBOutlet UIButton *view2Btn;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *view2BtnWidthConstraint;

//testview没有使用XXNibBridge
@property (weak, nonatomic) IBOutlet UIButton *viewBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TestView *view = [[[NSBundle mainBundle] loadNibNamed:@"TestView" owner:self options:nil] lastObject];
//
    [self.view addSubview:view];
//
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuide).with.offset(60);
        make.centerX.equalTo(self.view);
    }];
    
    
    //使用XXNibBridge后，这种方式就不太能用了。
//    TestView2 *view2 = [[[NSBundle mainBundle] loadNibNamed:@"TestView2" owner:self options:nil] lastObject];
//    //
//    [self.view addSubview:view2];
//    view2.backgroundColor = [UIColor redColor];
//    //
//    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(view.mas_bottom).with.offset(10);
//        make.centerX.equalTo(self.view);
//    }];
}

- (IBAction)btnClick:(UIButton *)sender {
    NSLog(@"点击了,响应在vc里：%@", sender.titleLabel.text);
    
    [self.viewBtn setTitle:@"test" forState:UIControlStateNormal];
}

- (IBAction)clickInVc:(id)sender {
    NSLog(@"clickinvc");
    
    int R = (arc4random() % 256) ;
    int G = (arc4random() % 256) ;
    int B = (arc4random() % 256) ;
    
    UIButton *btn = (UIButton *)sender;
    
    //通过视图的tag找到该视图，虽然直接，但是如果需要的视图多，tag很难维护。
    NSLog(@"+_+_+_++_+_+_+_+_+_+_+_%@", [self.view viewWithTag:432]);
    
    //遍历子视图找到某一个视图，并不是多好的办法。
    [[self.view subviews] enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj.restorationIdentifier isEqualToString:@"view2Btn"]) {
            [obj.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                NSLog(@"========+++++++++++++++:%@", obj);
                if ([obj.identifier isEqualToString:@"widthc"]) {
                    obj.constant += 30;
                }
            }];
        }
    }];
    
    btn.backgroundColor= random(R, G, B);
}

@end
