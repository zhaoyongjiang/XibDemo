//
//  ObjectViewController.m
//  XibDemo
//
//  Created by zyj on 2018/11/15.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "ObjectViewController.h"

#import "Person.h"
#import "Pet.h"

@interface ObjectViewController ()

@property (nonatomic, strong) IBOutlet Person *person;

@property (strong, nonatomic) IBOutlet Pet *pet;


@end

@implementation ObjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)btnClick:(UIButton *)sender {
    NSLog(@"打招呼，响应在vc");
}


@end
