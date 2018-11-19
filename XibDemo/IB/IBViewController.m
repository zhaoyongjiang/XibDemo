//
//  IBViewController.m
//  XibDemo
//
//  Created by zyj on 2018/11/19.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "IBViewController.h"

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
