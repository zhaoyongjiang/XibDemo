//
//  HomeViewController.m
//  XibDemo
//
//  Created by zyj on 2018/11/6.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "HomeViewController.h"
#import "LabelViewController.h"
#import "ImageViewViewController.h"
#import "ScrollViewController.h"
#import "ScrollViewController2.h"
#import "TableViewController.h"
#import "TableViewController2.h"
#import "CollectionViewController.h"
#import "MarginViewController.h"
#import "WebViewController.h"
#import "ObjectViewController.h"
#import "ViewController.h"
#import "IBViewController.h"

@interface HomeViewController ()

@property (nonatomic, strong) NSMutableArray *cellArr;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.clearsSelectionOnViewWillAppear = NO;
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cellArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = self.cellArr[indexPath.row];
    return cell;
}

- (NSMutableArray *)cellArr
{
    if (!_cellArr) {
        _cellArr = [[NSMutableArray alloc] init];
        [_cellArr addObjectsFromArray:@[@"LabelViewController", @"ImageViewViewController", @"ScrollViewController", @"ScrollViewController2", @"TableViewController", @"CollectionViewController", @"MarginViewController", @"ObjectViewController", @"ViewController", @"IBViewController"]];
    }
    
    return _cellArr;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *vcStr = self.cellArr[indexPath.row];
    if (vcStr && vcStr.length > 0) {
        Class vcClass = NSClassFromString(vcStr);
        UIViewController *vc = [[vcClass alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

@end
