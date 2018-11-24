//
//  IBViewController.m
//  XibDemo
//
//  Created by zyj on 2018/11/19.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "IBViewController.h"
#import "CustomImageView.h"

@interface IBViewController ()

@end

@implementation IBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"1", @"1", nil];
    __block NSInteger count = 0;
    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        count ++;
        if ([obj isEqualToString:@"1"]) {
            [arr removeObject:obj];
        }
    }];
    NSLog(@"arr遍历%ld, 剩余：%ld", (long)count, arr.count);
    
    NSMutableArray *arr1 = [[NSMutableArray alloc] initWithObjects:@"1", nil];
    [arr1 addObject:@"1"];
    NSString *str = @"1";
    [arr1 addObject:str];
    NSLog(@"%p,%p,%p", arr1[0], arr1[1], arr1[2]);
    __block NSInteger count1 = 0;
    [arr1 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        count1 ++;
        
        NSLog(@"%p", obj);
        if ([obj isEqualToString:@"1"]) {
            [arr1 removeObject:obj];
        }
    }];
    NSLog(@"arr1遍历%ld, 剩余：%ld", (long)count1, arr1.count);
}

@end
