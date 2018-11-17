//
//  LabelViewController.m
//  XibDemo
//
//  Created by zyj on 2018/11/10.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "LabelViewController.h"
#import <MHLXibToCode/MHLXibToCode.h>
#import "ZYJLabel.h"

@interface LabelViewController ()
@property (weak, nonatomic) IBOutlet ZYJLabel *testLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *testl;

@property (weak, nonatomic) IBOutlet UITextView *textview;
@end

@implementation LabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
}

- (IBAction)testTap:(id)sender {
    NSLog(@"tap");
}


- (void)viewDidLayoutSubviews
{
    //注释开这行，可以看到内边距效果。但是导致内容共展示不全。
//    self.testLabel.textInsets = UIEdgeInsetsMake(10, 10, 10, 10);
    [self.testLabel sizeToFit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
