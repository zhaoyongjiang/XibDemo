//
//  TableViewController2.m
//  XibDemo
//
//  Created by zyj on 2018/11/14.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "TableViewController2.h"
#import "AdjustTableViewCell.h"

@interface TableViewController2 ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@property (nonatomic, strong) NSMutableArray *arr;

@end

@implementation TableViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableview.estimatedRowHeight = 100;
    self.tableview.rowHeight = UITableViewAutomaticDimension;
    
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    
    [self.tableview registerNib:[UINib nibWithNibName:@"AdjustTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AdjustTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

@end
