//
//  MarginViewController.m
//  XibDemo
//
//  Created by zyj on 2018/11/13.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "MarginViewController.h"

@interface MarginViewController ()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *nameLab;
@property (weak, nonatomic) IBOutlet UILabel *contentLab;

@property (weak, nonatomic) IBOutlet UILabel *resultLb;
@property (weak, nonatomic) IBOutlet UITextView *inputTv;
@property (strong, nonatomic) IBOutlet UIView *accesoryView;

@property (weak, nonatomic) IBOutlet UITextField *textfiled;



@end

@implementation MarginViewController
{
    NSString * NameText;
    NSInteger changeLength;
    __weak IBOutlet UILabel *labeltest;
    
    NSTimer *timer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [super viewDidLoad];
    
    NameText = @"长昵称这是一个很长的昵称";
    changeLength = -1;
    
    _nameLab.text = NameText;//初始值
    _contentLab.text = @"一周以前";//初始值
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(action) userInfo:nil repeats:YES];
    
    self.inputTv.delegate = self;
    
    //加载nib
    UIView *tView = [[NSBundle mainBundle] loadNibNamed:@"AccessoryView" owner:self options:nil][0];
    
    //上面表示accesoryView初始化加载过了
    self.inputTv.inputAccessoryView = self.accesoryView;

//    self.textfiled.inputAccessoryView = tView;
}

-(void)action{
    /** 当前昵称 */
    NSString *name = [NameText substringToIndex:(_nameLab.text.length+changeLength)];
    NSLog(@"当前昵称:\n%@",name);
    
    _nameLab.text = name;//设置昵称
    
    if(_nameLab.text.length<=3){//最小宽度
        changeLength = 1;//加长
    }else if(_nameLab.text.length==NameText.length){//最大宽度
        changeLength = -1;//减短
    }
}

- (void)textViewDidChange:(UITextView *)textView
{
    self.resultLb.text = textView.text;
}

- (IBAction)accesoryBtnClick:(id)sender {
    [self.inputTv resignFirstResponder];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [timer invalidate];
    timer = nil;
}

@end
